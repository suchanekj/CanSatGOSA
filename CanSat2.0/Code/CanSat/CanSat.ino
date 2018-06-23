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
#include "_CanSat.h"

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

void setup() {

    //PWM output to Flight Controller

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

    servo_parachute.write(0);

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

    digitalWrite(FC_POWER, HIGH);
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
    for (int i = 0; i < 20; i++) {
        for (int j = 0; j < 4; j++) digitalWrite(LED[j], HIGH);
        delay(250);
        for (int j = 0; j < 4; j++) digitalWrite(LED[j], LOW);
        delay(250);
    }
    DEBUG_SERIAL.begin(9600);
    while(!DEBUG_SERIAL);
    DEBUG_SERIAL.println("REBOOT");
#endif



#if defined(BAROMETER) || defined(RANGING_SENSOR) || defined(COMPASS) || defined(HUMIDITYSENSOR) || defined(COMPASS2) || defined(LIGHT_SENSOR)
// Initialize I2C bus.
    i2c = new TwoWire();
    i2c->begin();
#ifdef DEBUG
    DEBUG_SERIAL.println("I2C initialized");
#endif
#endif

#ifdef BAROMETER
    // Initlialize components.
    barometer.begin(); // Get sensor online

    barometer.setModeBarometer();
    barometer.setOversampleRate(7); // Set Oversample to the recommended 128
    barometer.enableEventFlags(); // Enable all three pressure and temp event flags 

    delay(1000);
    barometer.readPressure();
    delay(1000);
    barometer.readPressure();
    delay(1000);
    barometer.readPressure();

    bar_alt = (1013.25 - barometer.readPressure() / 100.0) * 900.0;

    alt_mod = STARTING_ALT - bar_alt;

    DEBUG_SERIAL.println(bar_alt);
    DEBUG_SERIAL.println(alt_mod);
#ifdef DEBUG
    DEBUG_SERIAL.println("barometer initialized");
#endif
#endif

#ifdef HUMIDITY_SENSOR
    // The address can be changed making the option of connecting multiple devices
    humidity.getAddr_HIH7130(HIH7130_DEFAULT_ADDRESS);   // 0x27
    humidity.begin();
    delay(500);
#endif

#ifdef RANGING_SENSOR
    ranging_sensor.init();
    ranging_sensor.setTimeout(300);

    // Start continuous back-to-back mode (take readings as
    // fast as possible).  To use continuous timed mode
    // instead, provide a desired inter-measurement period in
    // ms (e.g. sensor.startContinuous(100)).
    ranging_sensor.startContinuous();
#endif

#ifdef COMPASS
    Acc = new LSM303AGR_ACC_Sensor(i2c);
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
#endif

#ifdef GPS
    GPS_init();
#ifdef DEBUG
    DEBUG_SERIAL.println("GPS initialized");
    delay(1000);
#endif
#endif

    flight_state = LANDED;
    drone_init();
    transmitting_init();
    last_time_sent = 0;
    for (int j = 0; j < 4; j++) digitalWrite(LED[j], HIGH);
}

void loop() {
#ifdef BAROMETER
    
    pressure = barometer.readPressure() * 100.0;
    bar_alt = (101325 - pressure / 100.0) * 9.0 + alt_mod;
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
#endif

#ifdef HUMIDITY_SENSOR
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

    o2 = analogRead(O2);
    co2 = analogRead(CO2) * 5 / 8.5;
    o3 = analogRead(O3);
    voltage = 2 * 5 * analogRead(BATTERY_VOLTAGE);
    //DEBUG_SERIAL.println(o2);
    //DEBUG_SERIAL.println(co2);
    //DEBUG_SERIAL.println(o3);
    delay(1000);
    runState();
}

