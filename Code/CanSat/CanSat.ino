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
#include "CanSat.h"

#if defined(BAROMETER) || defined(RANGING_SENSOR) || defined(COMPASS) || defined(HUMIDITYSENSOR)
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

    //Arms
//const int ARM_LED[4] = {47, 24, 76, 31};
//const int ARM_RANGING_XSHUT[4] = {38, 55, 11, 29};
//const int ARM_RANGING_INTERRUPT[4] = {19, 4, 53, 73};
    for (int i = 0; i < 4; i++) {
        pinMode(ARM_LED[i], OUTPUT);
        pinMode(ARM_RANGING_XSHUT[i], OUTPUT);
    }
    digitalWrite(ARM_RANGING_XSHUT[2], LOW);

    //Top board

    pinMode(TOP_LED, OUTPUT);

    //GSM module

    GSM_SERIAL.begin(9600);
    pinMode(GSM_SLEEP, OUTPUT);
    pinMode(GSM_POWER_KEY, OUTPUT);

    //GPS module

 //   GPS_SERIAL.begin(9600);

    //Servo

    pinMode(SERVO, OUTPUT);
    servo.attach(SERVO);

    //O2 sensor

    pinMode(O2, INPUT);

    //CO2 sensor

    pinMode(CO2, INPUT);

    //Camera power

    digitalWrite(CAMERA_POWER, LOW);
    pinMode(CAMERA_POWER, OUTPUT);

    //Flight Controller power

    digitalWrite(FC_POWER, HIGH);
    pinMode(FC_POWER, OUTPUT);

    //Radio transmitter

    pinMode(RFM_INT, INPUT);
    pinMode(RFM_SS, OUTPUT);

    //Read battery voltage

    pinMode(BATTERY_VOLTAGE, INPUT);

    pinMode(A2, INPUT);
    pinMode(A4, INPUT);
    pinMode(A5, INPUT);
    pinMode(A6, INPUT);
    pinMode(A7, INPUT);
    pinMode(A8, INPUT);
    pinMode(A9, INPUT);
    pinMode(A10, INPUT);
    pinMode(A11, INPUT);
    pinMode(A12, INPUT);
    pinMode(A13, INPUT);
    pinMode(A14, INPUT);
    pinMode(A15, INPUT);

#ifdef DEBUG
    // Led blinking.
    for (int i = 0; i < 20; i++) {
        digitalWrite(TOP_LED, HIGH);
        delay(250);
        digitalWrite(TOP_LED, LOW);
        delay(250);
    }
    DEBUG_SERIAL.begin(9600);
    while(!DEBUG_SERIAL);
    DEBUG_SERIAL.println("REBOOT");
#endif



#if defined(BAROMETER) || defined(RANGING_SENSOR) || defined(COMPASS) || defined(HUMIDITYSENSOR)
// Initialize I2C bus.
    i2c = new TwoWire();
    i2c->begin();
#ifdef DEBUG
    Serial.println("I2C initialized");
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

    Serial.println(bar_alt);
    Serial.println(alt_mod);
#ifdef DEBUG
    Serial.println("barometer initialized");
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
    Serial.println("Accelerometer initialized");
#endif
    Acc->Enable();
#ifdef DEBUG
    Serial.println("Accelerometer enabled");
#endif
    Mag = new LSM303AGR_MAG_Sensor(i2c);
#ifdef DEBUG
    Serial.println("Magnetometer initialized");
#endif
    Mag->Enable();
#ifdef DEBUG
    Serial.println("Magnetometer enabled");
#endif
#endif

#ifdef GPS
    GPS_init();
#ifdef DEBUG
    Serial.println("GPS initialized");
    delay(1000);
#endif
#endif

    flight_state = TESTING;
    drone_init();
    transmitting_init(0, 0, 0);
    last_time_sent = 0;
    digitalWrite(TOP_LED, HIGH);
}

void loop() {
#ifdef BAROMETER
    
    pressure = barometer.readPressure() * 100.0;
    bar_alt = (101325 - pressure / 100.0) * 9.0 + alt_mod;
#ifdef DEBUG
    Serial.print("Alt(cm): ");
    Serial.print(bar_alt);
    
    Serial.print("Pressure(Pa): ");
    Serial.print(pressure);
#endif

    temperature = barometer.readTemp() * 100;
#ifdef DEBUG
    Serial.print(" Temp: ");
    Serial.print(temperature);
    Serial.println();
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

        Serial.println("Getting Readings from HIH7130");
        Serial.println(" ");
        // Read and print out the Relative Humidity, convert it to %RH
        humid = humidity.Measure_Humidity();

        // Read and print out the temperature, then convert to C and F scales
        temperature = humidity.Measure_Temperature();

        // Output data to screen
        Serial.print("Relative Humidity Reading: ");
        Serial.print(humid);
        Serial.println(" %RH");
        Serial.print("Temperature Reading in Celsius: ");
        Serial.print(temperature);
        Serial.println(" C");
        Serial.println("        ***************************        ");
        Serial.println(" ");
    }
    else
    {
        Serial.println("HIH7130 Disconnected!");
        Serial.println(" ");
        Serial.println("        ************        ");
        Serial.println(" ");
    }
#endif

#ifdef RANGING_SENSOR
    Serial.print(ranging_sensor.readRangeContinuousMillimeters());
    if (ranging_sensor.timeoutOccurred()) { Serial.print(" TIMEOUT"); }

    Serial.println();
#endif

#ifdef COMPASS
    // Read accelerometer LSM303AGR.
    Acc->GetAxes(accelerometer);

    // Read magnetometer LSM303AGR.
    Mag->GetAxes(magnetometer);

    // Output data.
#ifdef DEBUG
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
    voltage = 15 * analogRead(BATTERY_VOLTAGE);
    runState();
}

