/*
  CanSat GOSA
  Code for a tiny probe to investigate existance of life
  Copyright (C) 2018  Jakub SuchĂˇnek, suchanek989@seznam.cz
  http://github.com/suchanekj/CanSatGOSA

  License
  **********************************************************************************
  This program is free software; you can redistribute it
  and/or modify it under the terms of the GNU General
  Public License as published by the Free Software
  Foundation; either version 3 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will
  be useful, but WITHOUT ANY WARRANTY; without even the
  implied warranty of MERCHANTABILITY or FITNESS FOR A
  PARTICULAR PURPOSE. See the GNU General Public
  License for more details.

  You should have received a copy of the GNU General
  Public License along with this program.
  If not, see <http://www.gnu.org/licenses/>.

  Licence can be viewed at
  https://github.com/suchanekj/CanSatGOSA/blob/master/LICENSE

  Please maintain this license information along with authorship
  and copyright notices in any redistribution of this code
  **********************************************************************************
*/

#include <USBAPI.h>
#include <Wire.h>
#include <Arduino.h>
#include <EEPROM.h>
#include <avr/wdt.h>
#include "_CanSat.h"

byte barometer_on;
byte radio_on;
byte humidity_sensor_on;
byte ranging_sensor_on;
byte compass_on;
byte gsm_on;
byte gps_on;
byte light_sensor_on;
byte uv_sensor_on;
byte sd_on;
byte init_state;

#if defined(BAROMETER) || defined(RANGING_SENSOR) || defined(COMPASS) || defined(HUMIDITYSENSOR) || defined(COMPASS2) || defined(LIGHT_SENSOR)
TwoWire *i2c;
#endif

#ifdef BAROMETER
MPL3115A2 barometer;
long int alt_mod;
#endif

#ifdef HUMIDITY_SENSOR
HIH7130 humidity;
#endif

#ifdef RANGING_SENSOR
VL53L0X ranging_sensor;
#endif

#ifdef COMPASS
LSM303AGR_ACC_Sensor *Acc;
LSM303AGR_MAG_Sensor *Mag;
#endif

#ifdef COMPASS2
Adafruit_HMC5883_Unified mag = Adafruit_HMC5883_Unified(12345);
#endif

//EEPROM [0] = state, [5,6] = modules, [14] = GPS counter
#define EEPROM_STATE 0
#define EEPROM_MODULES_0 5
#define EEPROM_MODULES_1 9
#define EEPROM_GPS 14

ISR(WDT_vect) {
    EEPROM.put(EEPROM_STATE, flight_state);
    if (init_state != INIT_DONE && init_state != 0) {
        uint16_t working_modules = EEPROM.read(EEPROM_MODULES_0) << 8 + EEPROM.read(EEPROM_MODULES_1);
        if(init_state == GPS) {
            byte GPS_counter = EEPROM.read(EEPROM_GPS);
            if(GPS_counter < 5) EEPROM.put(EEPROM_GPS, GPS_counter + 1);
            else {
                working_modules |= 1 << GPS;
            }
        }
        else working_modules |= 1 << init_state;
        EEPROM.put(EEPROM_MODULES_0, (byte)(working_modules >> 8));
        EEPROM.put(EEPROM_MODULES_1, (byte)working_modules);
    }

}

int old_bar_time;

void setup() {

    flight_state = EEPROM.read(EEPROM_STATE);
    EEPROM.put(EEPROM_STATE, (byte)INIT);
    init_state = 0;

    if(flight_state == INIT) {
        EEPROM.put(EEPROM_MODULES_0, (byte)0);
        EEPROM.put(EEPROM_MODULES_1, (byte)0);
        EEPROM.put(EEPROM_GPS, (byte)0);
        flight_state = BOOTING;
        barometer_on = 1;
        radio_on = 1;
        humidity_sensor_on = 1;
        ranging_sensor_on = 1;
        compass_on = 1;
        gsm_on = 1;
        gps_on = 1;
        light_sensor_on = 1;
        uv_sensor_on = 1;
        sd_on = 1;
    } else {
        uint16_t working_modules = EEPROM.read(EEPROM_MODULES_0) << 8 + EEPROM.read(EEPROM_MODULES_1);
#ifdef BAROMETER
        barometer_on = 1 - (working_modules >> BAROMETER) & 1;
#endif
#ifdef RADIO
        radio_on = 1 - (working_modules >> RADIO) & 1;
#endif
#ifdef HUMIDITY_SENSOR
        humidity_sensor_on = 1 - (working_modules >> HUMIDITY_SENSOR) & 1;
#endif
#ifdef RANGING_SENSOR
        ranging_sensor_on = 1 - (working_modules >> RANGING_SENSOR) & 1;
#endif
#ifdef COMPASS
        compass_on = 1 - (working_modules >> COMPASS) & 1;
#endif
#ifdef GSM
        gsm_on = 1 - (working_modules >> GSM) & 1;
#endif
#ifdef GPS
        gps_on = 1 - (working_modules >> GPS) & 1;
#endif
#ifdef LIGHT_SENSOR
        light_sensor_on = 1 - (working_modules >> LIGHT_SENSOR) & 1;
#endif
#ifdef UV_SENSOR
        uv_sensor_on = 1 - (working_modules >> UV_SENSOR) & 1;
#endif
#ifdef SD
        sd_on = 1 - (working_modules >> SD) & 1;
#endif
        if(flight_state == OPENING_ARMS || flight_state == BREAKING || flight_state == FLYING || flight_state == LANDING) {
            flight_state = PARACHUTING;
        }
    }

    //PWM output to Flight Controller

    wdt_enable(WDTO_4S);
    wdt_reset();

    pinMode(FC_PWM_1, OUTPUT);
    pinMode(FC_PWM_2, OUTPUT);
    pinMode(FC_PWM_3, OUTPUT);
    pinMode(FC_PWM_4, OUTPUT);
    pinMode(FC_PWM_5, OUTPUT);
    pinMode(FC_PWM_6, OUTPUT);
    pinMode(FC_PWM_7, OUTPUT);
    pinMode(FC_PWM_8, OUTPUT);

    //LEDs

    for (int i = 0; i < 4; i++) {
        pinMode(LED[i], OUTPUT);
    }


    //GSM module

    GSM_SERIAL.begin(9600);
    pinMode(GSM_SLEEP, OUTPUT);
    pinMode(GSM_POWER_KEY, OUTPUT);

    //GPS module

    //   GPS_SERIAL.begin(9600);

    //Servo

    pinMode(SERVO_PARACHUTE, OUTPUT);
    servo_parachute.attach(SERVO_PARACHUTE);

    if(flight_state == PARACHUTING) SERVO_PARACHUTE.write(SERVO_PARACUTE_OPEN);
    else SERVO_PARACHUTE.write(SERVO_PARACUTE_CLOSED);

    pinMode(SERVO_SAMPLE, OUTPUT);
    servo_sample.attach(SERVO_SAMPLE);

    //O2 sensor

    pinMode(O2, INPUT);

    //CO2 sensor

    pinMode(CO2, INPUT);

    //Camera power

    digitalWrite(CAMERA_POWER, HIGH);
    pinMode(CAMERA_POWER, OUTPUT);

    //Flight Controller power

    digitalWrite(FC_POWER, LOW);
    pinMode(FC_POWER, OUTPUT);

    //Radio transmitter

    pinMode(RFM_INT, INPUT);
    pinMode(RFM_SS, OUTPUT);

    //Read battery voltage

    pinMode(BATTERY_VOLTAGE, INPUT);

    pinMode(O2, INPUT);
    pinMode(CO2, INPUT);
    pinMode(O3, INPUT);

#ifdef DEBUG
    // Led blinking.
    if (flight_state == INIT) {
        for (int i = 0; i < 20; i++) {
            for (int j = 0; j < 4; j++) digitalWrite(LED[j], HIGH);
            delay(250);
            for (int j = 0; j < 4; j++) digitalWrite(LED[j], LOW);
            delay(250);
            wdt_reset();
        }
    }
    DEBUG_SERIAL.begin(9600);
    while (!DEBUG_SERIAL);
    DEBUG_SERIAL.print("REBOOT at ");
    DEBUG_SERIAL.println(flight_state);
#endif


#if defined(BAROMETER) || defined(RANGING_SENSOR) || defined(COMPASS) || defined(HUMIDITYSENSOR) || defined(COMPASS2) || defined(LIGHT_SENSOR)
// Initialize I2C bus.
    i2c = new TwoWire();
    i2c->begin();
    wdt_reset();
#ifdef DEBUG
    DEBUG_SERIAL.println("I2C initialized");
#endif
#endif

#ifdef BAROMETER
    if(barometer_on) {
        init_state = BAROMETER;
        // Initlialize components.
        barometer.begin(); // Get sensor online

        barometer.setModeBarometer();
        barometer.setOversampleRate(7); // Set Oversample to the recommended 128
        barometer.enableEventFlags(); // Enable all three pressure and temp event flags

        wdt_reset();

        delay(100);
        barometer.readPressure();
        delay(100);
        barometer.readPressure();
        delay(100);
        barometer.readPressure();

        bar_alt = (1013.25 - barometer.readPressure() / 100.0) * 900.0;

        alt_mod = STARTING_ALT - bar_alt;

        old_bar_time = millis();

        wdt_reset();

        DEBUG_SERIAL.println(bar_alt);
        DEBUG_SERIAL.println(alt_mod);
#ifdef DEBUG
        DEBUG_SERIAL.println("barometer initialized");
#endif
    }
#endif

#ifdef HUMIDITY_SENSOR
    if(humidity_on) {
        init_state = HUMIDITY_SENSOR;
        // The address can be changed making the option of connecting multiple devices
        humidity.getAddr_HIH7130(HIH7130_DEFAULT_ADDRESS);   // 0x27
        humidity.begin();
//    delay(500);
        wdt_reset();
    }

#endif

#ifdef RANGING_SENSOR
    if(ranging_sensor_on) {
        init_state = RANGING_SENSOR;
        ranging_sensor.init();
        ranging_sensor.setTimeout(300);

    // Start continuous back-to-back mode (take readings as
    // fast as possible).  To use continuous timed mode
    // instead, provide a desired inter-measurement period in
    // ms (e.g. sensor.startContinuous(100)).
        ranging_sensor.startContinuous();
        wdt_reset();
    }
#endif

#ifdef COMPASS
    if(compass_on) {
        init_state = COMPASS;
        Acc = new LSM303AGR_ACC_Sensor(i2c);
        wdt_reset();
#ifdef DEBUG
        DEBUG_SERIAL.println("Accelerometer initialized");
#endif
        Acc->Enable();
#ifdef DEBUG
        DEBUG_SERIAL.println("Accelerometer enabled");
#endif
        Mag = new LSM303AGR_MAG_Sensor(i2c);
#ifdef DEBUG
        DEBUG_SERIAL.println("Magnetometer initialized");
#endif
        Mag->Enable();
#ifdef DEBUG
        DEBUG_SERIAL.println("Magnetometer enabled");
#endif
    }
#endif

#ifdef GPS
    if(gps_on) {
        init_state = GPS;
        wdt_reset();
        GPS_init();
        wdt_reset();
#ifdef DEBUG
        DEBUG_SERIAL.println("GPS initialized");
#endif
    }
#endif


#ifdef RADIO
    if(radio_on) {
        init_state = RADIO;
        //Initialize radio
        radio.setCS(RFM_SS);
        radio.initialize(FREQUENCY, NODEID, NETWORKID);
        radio.setHighPower(); //To use the high power capabilities of the RFM69HW
        radio.encrypt(ENCRYPTKEY);
        radio.setFrequency(868000000);
        radio.setPowerLevel(28);
#ifdef DEBUG
        DEBUG_SERIAL.print("Transmitting at ");
        uint32_t f = radio.getFrequency();
        DEBUG_SERIAL.println(f);
#endif
    }
#endif

#ifdef COMPASS2
    if(!mag.begin())
    {
        /* There was a problem detecting the HMC5883 ... check your connections */
#ifdef DEBUG
        Serial.println("Ooops, no HMC5883 detected ... Check your wiring!");
#endif
        while(1);
    }
#endif

//    flight_state = TESTING;
    init_state = INIT_DONE;
    wdt_reset();
    drone_init();
    wdt_reset();
    transmitting_init();
    wdt_reset();
    send_init();
    wdt_reset();
    last_time_sent = 0;
    for (int j = 0; j < 4; j++) digitalWrite(LED[j], HIGH);
}

void loop() {
    wdt_reset();
#ifdef BAROMETER
    if(barometer_on) {
        pressure = barometer.readPressure() * 100.0;
        int old_bar_alt = bar_alt;
        bar_alt = (101325 - pressure / 100.0) * 9.0 + alt_mod;
        bar_vel = ((old_bar_alt - bar_alt) * 1000) / (millis() - old_bar_time);
        old_bar_time = millis();
#ifdef DEBUGa
        DEBUG_SERIAL.print("Alt(cm): ");
        DEBUG_SERIAL.print(bar_alt);
    
        DEBUG_SERIAL.print("Pressure(Pa): ");
        DEBUG_SERIAL.print(pressure);
#endif

        temperature = barometer.readTemp() * 100;
#ifdef DEBUGa
        DEBUG_SERIAL.print(" Temp: ");
        DEBUG_SERIAL.print(temperature);
        DEBUG_SERIAL.println();
#endif
    }
#endif

#ifdef HUMIDITY_SENSOR
    if(humidity_on) {
        byte error;
        int8_t address;

        address = humidity.hih_i2cAddress;
        // The i2c_scanner uses the return value of
        // the Write.endTransmisstion to see if
        // a device did acknowledge to the address.
        Wire.beginTransmission(address);
        error = Wire.endTransmission();
        DEBUG_SERIAL.print(error);
        if (error == 0)
        {
            humidity.readRegister(address);

            DEBUG_SERIAL.println("Getting Readings from HIH7130");
            DEBUG_SERIAL.println(" ");
            // Read and print out the Relative Humidity, convert it to %RH
            humid = humidity.Measure_Humidity();

            // Read and print out the temperature, then convert to C and F scales
            temperature = humidity.Measure_Temperature();

            // Output data to screen
            DEBUG_SERIAL.print("Relative Humidity Reading: ");
            DEBUG_SERIAL.print(humid);
            DEBUG_SERIAL.println(" %RH");
            DEBUG_SERIAL.print("Temperature Reading in Celsius: ");
            DEBUG_SERIAL.print(temperature);
            DEBUG_SERIAL.println(" C");
            DEBUG_SERIAL.println("        ***************************        ");
            DEBUG_SERIAL.println(" ");
        }
        else
        {
            DEBUG_SERIAL.println("HIH7130 Disconnected!");
            DEBUG_SERIAL.println(" ");
            DEBUG_SERIAL.println("        ************        ");
            DEBUG_SERIAL.println(" ");
        }
    }
#endif

#ifdef RANGING_SENSOR
    armDistance = ranging_sensor.readRangeContinuousMillimeters();
    if (ranging_sensor.timeoutOccurred()) { DEBUG_SERIAL.print(" TIMEOUT"); }

    DEBUG_SERIAL.println();
#endif

#ifdef COMPASS
    // Read accelerometer LSM303AGR.
    Acc->GetAxes(accelerometer);

    // Read magnetometer LSM303AGR.
    Mag->GetAxes(magnetometer);

    // Output data.
#if 0
    DEBUG_SERIAL.print("| Acc[mg]: ");
    DEBUG_SERIAL.print(accelerometer[0]);
    DEBUG_SERIAL.print(" ");
    DEBUG_SERIAL.print(accelerometer[1]);
    DEBUG_SERIAL.print(" ");
    DEBUG_SERIAL.print(accelerometer[2]);
    DEBUG_SERIAL.print(" | Mag[mGauss]: ");
    DEBUG_SERIAL.print(magnetometer[0]);
    DEBUG_SERIAL.print(" ");
    DEBUG_SERIAL.print(magnetometer[1]);
    DEBUG_SERIAL.print(" ");
    DEBUG_SERIAL.print(magnetometer[2]);
    DEBUG_SERIAL.println(" |");
#endif
#endif

#ifdef GPS
    GPS_run();
#endif

#ifdef COMPASS2
    if(!mag.begin())
    {
        /* There was a problem detecting the HMC5883 ... check your connections */
#ifdef DEBUG
        Serial.println("Ooops, no HMC5883 detected ... Check your wiring!");
#endif
        while(1);
    }
#endif

    o2 = analogRead(O2);
    co2 = analogRead(CO2) * 5 / 8.5;
    o3 = analogRead(O3);
    voltage = 2 * 5 * analogRead(BATTERY_VOLTAGE);
    if(my_fix.velocity_down > min(5000, 1000 + my_fix.altitude_cm() - DESTINATION_ALT) || bar_vel > min(5000, 1000 + bar_alt - DESTINATION_ALT)) flight_state = PARACHUTING;
    runState();
}

