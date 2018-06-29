/*
  CanSat GOSA
  Code for a tiny probe to investigate existance of life
  Copyright (C) 2018  Jakub Suchánek, suchanek989@seznam.cz
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
#include <EEPROM.h>
#include <avr/wdt.h>
#include <SD.h>
#include <SPI.h>
#include "_CanSat.h"

#if defined(BAROMETER) || defined(RANGING_SENSOR) || defined(COMPASS) || defined(HUMIDITYSENSOR) || defined(COMPASS2) || defined(LIGHT_SENSOR)
TwoWire *i2c;
#endif

#ifdef BAROMETER
BMP180 bmp;
long int alt_mod;
#endif

#ifdef HUMIDITY_SENSOR
Adafruit_Si7021 hum = Adafruit_Si7021();
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

#ifdef LIGHT_SENSOR
Adafruit_TSL2591 tsl = Adafruit_TSL2591(2591);
#endif

#ifdef UV_SENSOR
Adafruit_VEML6070 uv = Adafruit_VEML6070();
#endif

#ifdef SPECTROSCOP
AS726X spectroscop;
#endif

void changeInitState(int new_state) {
    EEPROM.put(EEPROM_CURRENT_MODULE, new_state);
    init_state = new_state;
}

long old_bar_time;
long old_bar_alt;

ISR(WDT_vect) {
}

void setup() {

    flight_state = EEPROM.read(EEPROM_STATE);
    if(STATES_N <= flight_state) flight_state = INIT;
    EEPROM.put(EEPROM_STATE, (byte) INIT);
    init_state = 0;
    if(flight_state != BOOTING) changeState(INIT);

    if (flight_state == INIT) {
        EEPROM.put(EEPROM_MODULES_0, (byte) 0);
        EEPROM.put(EEPROM_MODULES_1, (byte) 0);
        EEPROM.put(EEPROM_GPS, (byte) 0);
        EEPROM.put(EEPROM_CURRENT_MODULE, (byte) 0);
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
        compass2_on = 1;
        i2c_on = 1;
    } else {
        if(flight_state == INIT || flight_state == BOOTING) {
            byte old_init_state = EEPROM.read(EEPROM_CURRENT_MODULE);
            if (old_init_state != INIT_DONE && old_init_state != 0) {
                uint16_t working_modules = (EEPROM.read(EEPROM_MODULES_0) << 8) + EEPROM.read(EEPROM_MODULES_1);
#ifdef GPS
                if(old_init_state == GPS) {
                    byte GPS_counter = EEPROM.read(EEPROM_GPS);
                    if(GPS_counter < 2) {
                        EEPROM.put(EEPROM_GPS, (byte)(GPS_counter + (byte) 1));
                    }
                    else {
                        working_modules |= 1 << GPS;
                    }
                }
                else working_modules |= 1 << old_init_state;
#endif
#ifndef GPS
                working_modules |= 1 << old_init_state;
#endif
                EEPROM.put(EEPROM_MODULES_0, (byte)(working_modules >> 8));
                EEPROM.put(EEPROM_MODULES_1, (byte)working_modules);
            }
        }
        uint16_t working_modules = (EEPROM.read(EEPROM_MODULES_0) << 8) + EEPROM.read(EEPROM_MODULES_1);
#ifdef DEBUG
        DEBUG_SERIAL.begin(9600);
        while (!DEBUG_SERIAL);
        DEBUG_SERIAL.print("broken modules are ");
        DEBUG_SERIAL.println(flight_state, BIN);
#endif
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
#ifdef COMPASS2
        compass2_on = 1 - (working_modules >> COMPASS2) & 1;
#endif
        if (flight_state == OPENING_ARMS || flight_state == BREAKING || flight_state == FLYING ||
            flight_state == LANDING) {
            changeState(PARACHUTING);
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

//    pinMode(GSM_SLEEP, OUTPUT);
//    pinMode(GSM_POWER_KEY, OUTPUT);

    //GPS module

//    GPS_SERIAL.begin(9600);

    //Servo

    pinMode(SERVO_PARACHUTE, OUTPUT);
    servo_parachute.attach(SERVO_PARACHUTE);

    if (flight_state == PARACHUTING) servo_parachute.write(SERVO_PARACUTE_OPEN);
    else
        servo_parachute.write(SERVO_PARACUTE_CLOSED);

    pinMode(SERVO_SAMPLE, OUTPUT);
    servo_sample.attach(SERVO_SAMPLE);
    servo_sample.write(0);

    //O2 sensor

    pinMode(O2, INPUT);

    //CO2 sensor

    pinMode(CO2, INPUT);

    //Camera power

    digitalWrite(CAMERA_POWER, LOW);
    pinMode(CAMERA_POWER, OUTPUT);

    //Flight Controller power

    digitalWrite(FC_POWER, LOW);
    pinMode(FC_POWER, OUTPUT);

    //Radio transmitter

    pinMode(RFM_INT, INPUT);
    digitalWrite(RFM_SS, HIGH);
    pinMode(RFM_SS, OUTPUT);

    //SD card

    digitalWrite(SD_SS, HIGH);
    pinMode(SD_SS, OUTPUT);

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
    DEBUG_SERIAL.print("REBOOT at ");
    DEBUG_SERIAL.println(flight_state);
#endif

    if(flight_state == INIT)
        changeState(BOOTING);

#if defined(BAROMETER) || defined(RANGING_SENSOR) || defined(COMPASS) || defined(HUMIDITY_SENSOR) || defined(COMPASS2) || defined(LIGHT_SENSOR)
// Initialize I2C bus.
    if(i2c_on) {
        changeInitState(I2C);
        i2c = new TwoWire();
        i2c->begin();
        wdt_reset();
#ifdef DEBUG
        DEBUG_SERIAL.println("I2C initialized");
#endif
    }
#endif

#ifdef BAROMETER
    if (barometer_on && i2c_on) {
        if (bmp.begin())
            DEBUG_SERIAL.println("BMP180 init success");
        else
        {
            //In case of error let user know of the problem
            DEBUG_SERIAL.println("BMP180 init fail (disconnected?)\n\n");
            while(1); // Pause forever.
        }
        wdt_reset();


        double T,P;

        // Get a new pressure reading:

        if(flight_state == BOOTING || flight_state == INIT) {
            delay(1000);
            bmp.getData(T,P);
            wdt_reset();
            delay(1000);
            bmp.getData(T,P);
            delay(1000);
            bmp.getData(T,P);
            wdt_reset();
        }
        else
            bmp.getData(T,P);

        while(P < 1000 || P > 1200) bmp.getData(T,P);

        bar_alt = (long)(((double)1013.25 - P) * (double)900.0);

        alt_mod = (long)STARTING_ALT - (long)bar_alt;

        bar_alt_0 = bar_alt;

        old_bar_time = -10000;

        wdt_reset();

        DEBUG_SERIAL.println(bar_alt);
        DEBUG_SERIAL.println(alt_mod);
#ifdef DEBUG
        DEBUG_SERIAL.println("barometer initialized");
#endif
    }
#endif

#ifdef HUMIDITY_SENSOR
    if(humidity_sensor_on && i2c_on) {
        changeInitState(HUMIDITY_SENSOR);
        if (!hum.begin()) {
#ifdef DEBUG
            DEBUG_SERIAL.println("Did not find Si7021 sensor!");
#endif
            while (true);
        }
#ifdef DEBUG
        DEBUG_SERIAL.println("humidity initialized");
#endif
    }

#endif

#ifdef RANGING_SENSOR
    if (ranging_sensor_on) {
        changeInitState(RANGING_SENSOR);
        ranging_sensor.init();
        ranging_sensor.setTimeout(300);

        // Start continuous back-to-back mode (take readings as
        // fast as possible).  To use continuous timed mode
        // instead, provide a desired inter-measurement period in
        // ms (e.g. sensor.startContinuous(100)).
        ranging_sensor.startContinuous();
        wdt_reset();
#ifdef DEBUG
        DEBUG_SERIAL.println("ranging initialized");
#endif
    }
#endif

#ifdef COMPASS
    if(compass_on) {
        changeInitState(COMPASS);
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
    if (gps_on) {
        changeInitState(GPS);
        wdt_reset();
        GPS_init();
        wdt_reset();
#ifdef DEBUG
        DEBUG_SERIAL.println("GPS initialized");
#endif
    }
#endif


#ifdef RADIO
    if (radio_on) {
        changeInitState(RADIO);
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
    if(compass2_on) {
        if (!mag.begin()) {
            /* There was a problem detecting the HMC5883 ... check your connections */
#ifdef DEBUG
            DEBUG_SERIAL.println("Ooops, no HMC5883 detected ... Check your wiring!");
#endif
            while (1);
        }
#ifdef DEBUG
        DEBUG_SERIAL.println("compass2 initialized");
#endif
    }
#endif

#ifdef LIGHT_SENSOR
    if(light_sensor_on && i2c_on) {
        // You can change the gain on the fly, to adapt to brighter/dimmer light situations
        //tsl.setGain(TSL2591_GAIN_LOW);    // 1x gain (bright light)
        tsl.setGain(TSL2591_GAIN_MED);      // 25x gain
        //tsl.setGain(TSL2591_GAIN_HIGH);   // 428x gain

        // Changing the integration time gives you a longer time over which to sense light
        // longer timelines are slower, but are good in very low light situtations!
        //tsl.setTiming(TSL2591_INTEGRATIONTIME_100MS);  // shortest integration time (bright light)
        // tsl.setTiming(TSL2591_INTEGRATIONTIME_200MS);
        tsl.setTiming(TSL2591_INTEGRATIONTIME_300MS);
        // tsl.setTiming(TSL2591_INTEGRATIONTIME_400MS);
        // tsl.setTiming(TSL2591_INTEGRATIONTIME_500MS);
        // tsl.setTiming(TSL2591_INTEGRATIONTIME_600MS);  // longest integration time (dim light)

#ifdef DEBUG
        /* Display the gain and integration time for reference sake */
        DEBUG_SERIAL.println(F("------------------------------------"));
        DEBUG_SERIAL.print(F("Gain:         "));
        tsl2591Gain_t gain = tsl.getGain();
        switch (gain) {
            case TSL2591_GAIN_LOW:
                DEBUG_SERIAL.println(F("1x (Low)"));
                break;
            case TSL2591_GAIN_MED:
                DEBUG_SERIAL.println(F("25x (Medium)"));
                break;
            case TSL2591_GAIN_HIGH:
                DEBUG_SERIAL.println(F("428x (High)"));
                break;
            case TSL2591_GAIN_MAX:
                DEBUG_SERIAL.println(F("9876x (Max)"));
                break;
        }
        DEBUG_SERIAL.print(F("Timing:       "));
        DEBUG_SERIAL.print((tsl.getTiming() + 1) * 100, DEC);
        DEBUG_SERIAL.println(F(" ms"));
        DEBUG_SERIAL.println(F("------------------------------------"));
        DEBUG_SERIAL.println(F(""));
#endif
    }
#endif

#ifdef UV_SENSOR
    if(uv_sensor_on && i2c_on) {
#ifdef DEBUG
        DEBUG_SERIAL.println("VEML6070 Test");
#endif
        uv.begin(VEML6070_1_T);
    }
#endif

#ifdef SD_CARD
    if(SD_on) {
        if (!SD.begin(SD_SS)) {
            DEBUG_SERIAL.println("Card failed, or not present");
            // don't do anything more:
            while(1);
        }
        DEBUG_SERIAL.println("SD initialized");
    }
#endif

#ifdef SPECTROSCOP
    if(spectroscop_on){
        spectroscop.begin();
    }
#endif

#ifdef LIGHT_SENSOR
    if(light_sensor_on && i2c_on) {
        if (tsl.begin())
        {
            DEBUG_SERIAL.println(F("Found a TSL2591 sensor"));
        }
        else
        {
            DEBUG_SERIAL.println(F("No sensor found ... check your wiring?"));
            while (1);
        }

        tsl.setGain(TSL2591_GAIN_MED);      // 25x gain
        //tsl.setGain(TSL2591_GAIN_HIGH);   // 428x gain

        // Changing the integration time gives you a longer time over which to sense light
        // longer timelines are slower, but are good in very low light situtations!
        //tsl.setTiming(TSL2591_INTEGRATIONTIME_100MS);  // shortest integration time (bright light)
        // tsl.setTiming(TSL2591_INTEGRATIONTIME_200MS);
        tsl.setTiming(TSL2591_INTEGRATIONTIME_300MS);
    }
#endif

//    flight_state = TESTING;
    changeInitState(INIT_DONE);
    wdt_reset();
//    drone_init();
    wdt_reset();
    transmitting_init();
    wdt_reset();
    send_init();
    wdt_reset();
    last_time_sent = 0;
    for (int j = 0; j < 4; j++) digitalWrite(LED[j], HIGH);
}

void loop() {
//    changeState(LANDED);
    wdt_reset();
#ifdef BAROMETER
    if(barometer_on && i2c_on) {
        changeInitState(BAROMETER);
        double T,P;

        bmp.getData(T,P);



        temperature = T * 100;
        if(P >= 1000 || P <= 1200) pressure = P * (double)100;

        bar_alt = (101325 - P * 100) * 9.0 + alt_mod;
        if(millis() - old_bar_time > 500) {
            bar_vel = (long)((old_bar_alt - bar_alt) * (long)1000) / (long)(millis() - old_bar_time);
            DEBUG_SERIAL.println((old_bar_alt - bar_alt) * 1000);
            DEBUG_SERIAL.println(millis() - old_bar_time);

            old_bar_time = millis();
            old_bar_alt = bar_alt;
        }
#ifdef DEBUGa
        DEBUG_SERIAL.print("Alt(cm): ");
        DEBUG_SERIAL.print(bar_alt);
    
        DEBUG_SERIAL.print("Pressure(Pa): ");
        DEBUG_SERIAL.print(pressure);
#endif
#ifdef DEBUGa
        DEBUG_SERIAL.print(" Temp: ");
        DEBUG_SERIAL.print(temperature);
        DEBUG_SERIAL.println();
#endif
    }
#endif
//
//    DEBUG_SERIAL.println("a");
//    delay(100);

#ifdef HUMIDITY_SENSOR
    if(humidity_sensor_on && i2c_on) {
        changeInitState(HUMIDITY_SENSOR);
        hum.readHumidity();
    }
#endif
//
//    DEBUG_SERIAL.println("a");
//    delay(100);

#ifdef RANGING_SENSOR
    if(ranging_sensor_on) {
        bottom_distance = ranging_sensor.readRangeContinuousMillimeters();
#ifdef DEBUG
        if (ranging_sensor.timeoutOccurred()) { DEBUG_SERIAL.println(" TIMEOUT"); }
#endif
    }
#endif

#ifdef COMPASS
    if(compass_on) {
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
    }
#endif

#ifdef GPS
    if(gps_on)
    {
        changeInitState(GPS);
        GPS_run();
    }
#endif

#ifdef COMPASS2
    if(compass2_on) {
        /* Get a new sensor event */
        sensors_event_t event;
        mag.getEvent(&event);
#ifdef DEBUG
        /* Display the results (magnetic vector values are in micro-Tesla (uT)) */
        DEBUG_SERIAL.print("X: "); DEBUG_SERIAL.print(event.magnetic.x); DEBUG_SERIAL.print("  ");
        DEBUG_SERIAL.print("Y: "); DEBUG_SERIAL.print(event.magnetic.y); DEBUG_SERIAL.print("  ");
        DEBUG_SERIAL.print("Z: "); DEBUG_SERIAL.print(event.magnetic.z); DEBUG_SERIAL.print("  ");DEBUG_SERIAL.println("uT");
#endif
        magnetometer[0] = event.magnetic.x + COMPASS_OFFSET_X;
        magnetometer[1] = event.magnetic.y + COMPASS_OFFSET_Y;
        magnetometer[2] = event.magnetic.z;

        heading = atan2(magnetometer[0], magnetometer[1]) + HEADING_OFFSET;
    }
#endif
//
//    DEBUG_SERIAL.println("a");
//    delay(100);

#ifdef LIGHT_SENSOR
    if(light_sensor_on && flight_state == LANDED && i2c_on) {
        changeInitState(LIGHT_SENSOR);
        uint32_t lum = tsl.getFullLuminosity();
        light_ir, light_vis;
        light_ir = lum >> 16;
        light_vis = lum & 0xFFFF;
    }
#endif
//
//    DEBUG_SERIAL.println("a");
//    delay(100);

#ifdef UV_SENSOR
    if(uv_sensor_on && i2c_on) {
        changeInitState(UV_SENSOR);
        uv_light = uv.readUV();
    }
#endif

//#ifdef DEBUG
//    DEBUG_SERIAL.println("a");
//    delay(100);
//#endif

#ifdef SPECTROSCOP
    spectroscop.takeMeasurements();
    spectroscopy[0] = spectroscop.getCalibratedR();
    spectroscopy[1] = spectroscop.getCalibratedS();
    spectroscopy[2] = spectroscop.getCalibratedT();
    spectroscopy[3] = spectroscop.getCalibratedU();
    spectroscopy[4] = spectroscop.getCalibratedV();
    spectroscopy[5] = spectroscop.getCalibratedW();
#endif

    o2 = analogRead(O2);
    co2 = analogRead(CO2) * 5 / 8.5;
    o3 = analogRead(O3);
    voltage = 2 * 5 * analogRead(BATTERY_VOLTAGE);
    if(/*my_fix.velocity_down > min(5000, 1000 + max(my_fix.altitude_cm() - DESTINATION_ALT, 0)) || */bar_vel > min(5000, 1000 + max(bar_alt - DESTINATION_ALT, 0)) || !barometer_on || voltage < 7000) changeState(PARACHUTING);
    runState();
    if(flight_state != PARACHUTING) servo_parachute.write(SERVO_PARACUTE_CLOSED);
    else servo_parachute.write(SERVO_PARACUTE_OPEN);
    //send_data();
}

