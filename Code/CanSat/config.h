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

#ifndef CANSAT_CONFIG_H
#define CANSAT_CONFIG_H

/*
 ***********************************************************************************
 *  Landing spot
 */

#define DESTINATION_LAT 499951500
#define DESTINATION_LON 145513150
#define DESTINATION_ALT 32500

#define EARTH_RADIUS_M 6371009
#define RAD_PER_DEGREE (PI / 180.0)
#define STARTING_ALT 32500
/*
 ***********************************************************************************
 *  Subsystem definitions
 */
//comment any line to disable subsystem

#define DEBUG
#define BAROMETER
#define RADIO
//#define HUMIDITY_SENSOR
#define RANGING_SENSOR
#define COMPASS
//#define GSM
#define GPS

/*
 ***********************************************************************************
 *  Parameter definitions
 */

//Transmitting

#define USE_RADIO 1
#define USE_EMAIL 0
#define USE_SMS   0

//Radio Parameters

#define NODEID        2    //unique for each node on same network
#define NETWORKID     42  //the same on all nodes that talk to each other
#define GATEWAYID     1    //Receiving node
#define ENCRYPTKEY    "Suchy Na Mars!!!" //exactly the same 16 characters/bytes on all nodes!

//GSM parameters

#define GSM_WAIT_FOR_POWER_UP 10000

/*
 ***********************************************************************************
 *  Port definitions
 */

//debugging

#define DEBUG_SERIAL Serial

//PWM output to Flight Controller

#define FC_PWM_1 6
#define FC_PWM_2 7
#define FC_PWM_3 46
#define FC_PWM_4 12
#define FC_PWM_5 8
#define FC_PWM_6 9
#define FC_PWM_7 45
#define FC_PWM_8 44

//Arms

const int ARM_LED[4] = {47, 24, 76, 31};
const int ARM_RANGING_XSHUT[4] = {38, 55, 11, 29};
const int ARM_RANGING_INTERRUPT[4] = {19, 4, 53, 73};

//Top board

#define TOP_LED 28

//GSM module

#define GSM_SERIAL Serial2
#define GSM_SLEEP 83
#define GSM_POWER_KEY 27

//GPS module

#define GPS_SERIAL Serial1
//#define gpsPort Serial1
//#define GPS_PORT_NAME "Serial1"

//Servo

#define SERVO 13

//O2 sensor

#define O2 A0

//CO2 sensor

#define CO2 25

//Camera power

#define CAMERA_POWER 35

//Flight Controller power

#define FC_POWER 34

//Radio transmitter

#define RFM_INT 10
#define RFM_SS 26

//Read battery voltage

#define BATTERY_VOLTAGE A8

//UV read

#define UV A6

//Gamma read

#define GAMMA


#endif //CANSAT_CONFIG_H
