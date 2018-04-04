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
#include "CanSat.h"

#if defined(BAROMETER) || defined(RANGING_SENSOR) || defined(COMPASS) || defined(HUMIDITYSENSOR)
TwoWire *i2c;
#endif

#ifdef BAROMETER
LPS22HBSensor *barometer;
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

int armDistance[4];
int humid;
int32_t accelerometer[3];
int32_t magnetometer[3];
int pressure;
int temperature;
unsigned long last_time_sent;

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

    for (int i = 0; i < 4; i++) {
        pinMode(ARM_LED[i], OUTPUT);
        pinMode(ARM_RANGING_XSHUT[i], OUTPUT);
        pinMode(ARM_RANGING_INTERRUPT[i], INPUT);
    }

    //Top board

    pinMode(TOP_LED, OUTPUT);

    //GSM module

    GSM_SERIAL.begin(9600);
    pinMode(GSM_SLEEP, OUTPUT);
    pinMode(GSM_POWER_KEY, OUTPUT);

    //GPS module

    GPS_SERIAL.begin(9600);

    //Servo

    pinMode(SERVO, OUTPUT);

    //O2 sensor

    pinMode(O2, INPUT);

    //CO2 sensor

    pinMode(CO2, INPUT);

    //Camera power

    pinMode(CAMERA_POWER, OUTPUT);

    //Flight Controller power

    pinMode(FC_POWER, OUTPUT);

    //Radio transmitter

    pinMode(RFM_INT, INPUT);
    pinMode(RFM_SS, OUTPUT);

    //Read battery voltage

    pinMode(BATTERY_VOLTAGE, INPUT);

#ifdef DEBUG
    // Led blinking.
    for (int i = 0; i < 1; i++) {
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
    barometer = new LPS22HBSensor(i2c);
#ifdef DEBUG
    Serial.println("barometer initialized");
#endif
    barometer->Enable();
#ifdef DEBUG
    Serial.println("barometer enabled");
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
    ranging_sensor.setTimeout(500);

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
#endif
#endif

    state = 0;
    transmitting_init(1, 0, 0);
    last_time_sent = 0;
}

void loop() {
#if defined(RADIO) && defined(DEBUG)
    radio.send(GATEWAYID, payload, 50);
    DEBUG_SERIAL.println(payload);
#endif

#ifdef BAROMETER
    // Led blinking.
    digitalWrite(TOP_LED, HIGH);
    delay(250);
    digitalWrite(TOP_LED, LOW);
    delay(250);

    // Read pressure.
    float pressure, temperature;
    barometer->GetPressure(&pressure);
    barometer->GetTemperature(&temperature);

    DEBUG_SERIAL.print("Pres[hPa]: ");
    DEBUG_SERIAL.print(pressure, 2);
    DEBUG_SERIAL.print(" | Temp[C]: ");
    DEBUG_SERIAL.println(temperature, 2);
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

#ifdef GPS
    GPS_run();
#endif
    runState();
}
