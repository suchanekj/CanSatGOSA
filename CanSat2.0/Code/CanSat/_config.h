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

#include "GPSport.h"

/*
 ***********************************************************************************
 *  Landing spot
 */

#define STARTING_ALT 500
#define DESTINATION_LAT 499951500
#define DESTINATION_LON 145513150
#define DESTINATION_ALT 500

#define EARTH_RADIUS_M 6371009
#define RAD_PER_DEGREE (PI / 180.0)

/*
 ***********************************************************************************
 *  Subsystem definitions
 */
//comment any line to disable subsystem

#define DEBUG

#define BAROMETER 1
#define RADIO 2
#define HUMIDITY_SENSOR 3
#define RANGING_SENSOR 4
//#define COMPASS 5
//#define GSM 6
#define GPS 7
#define LIGHT_SENSOR 8
#define UV_SENSOR 9
#define SD 10
#define COMPASS2 11
#define SPECTROSCOP 12

#define INIT_DONE 13

/*
 ***********************************************************************************
 *  Parameter definitions
 */

//Radio Parameters

#define NODEID        2    //unique for each node on same network
#define NETWORKID     42  //the same on all nodes that talk to each other
#define GATEWAYID     1    //Receiving node
#define ENCRYPTKEY    "Suchy Na Mars!!!" //exactly the same 16 characters/bytes on all nodes!

//GSM parameters

#define GSM_WAIT_FOR_POWER_UP 10000

#define SERVO_PARACUTE_CLOSED (int)180
#define SERVO_PARACUTE_OPEN (int)0

#define EEPROM_STATE 0
#define EEPROM_MODULES_0 5
#define EEPROM_MODULES_1 9
#define EEPROM_GPS 14
#define EEPROM_CURRENT_MODULE 19

#define STATES_N 12

#define COMPASS_OFFSET_X 0
#define COMPASS_OFFSET_Y 0

/*
 ***********************************************************************************
 *  Port definitions
 */

//debugging

#define DEBUG_SERIAL NeoSerial

//PWM output to Flight Controller


//#define FC_PWM_1 9
//#define FC_PWM_2 24
//#define FC_PWM_3 23
//#define FC_PWM_4 6
//#define FC_PWM_5 44
//#define FC_PWM_6 45
//#define FC_PWM_7 46
//#define FC_PWM_8 12

#define FC_PWM_1 12
#define FC_PWM_2 9
#define FC_PWM_3 23
#define FC_PWM_4 6
#define FC_PWM_5 45
#define FC_PWM_6 46
#define FC_PWM_7 24
#define FC_PWM_8 46

//Top board

const int LED[4] = {38, 85, 84, 83};

//GSM module

#define GSM_SERIAL NeoSerial2
#define GSM_SLEEP 25
#define GSM_POWER_KEY 28

//GPS module


//Servo

#define SERVO_PARACHUTE 10
#define SERVO_SAMPLE 13

//O2 sensor

#define O2 A11
#define CO2 A12
#define O3 A13

//Camera power

#define CAMERA_POWER 26

//Flight Controller power

#define FC_POWER 27

//Radio transmitter

#define RFM_INT 2
#define RFM_SS 4

//SD card

#define SD_SS

//Read battery voltage

#define BATTERY_VOLTAGE A10

//Gamma read

#define GAMMA 3

#endif //CANSAT_CONFIG_H
