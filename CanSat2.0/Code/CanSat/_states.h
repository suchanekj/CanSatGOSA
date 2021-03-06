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

#ifndef CANSAT_STATES_H
#define CANSAT_STATES_H

#include <Arduino.h>
#include "_config.h"
#include "_drone.h"
#include "_Transmitting.h"

extern int bottom_distance;
extern int humid;
extern int32_t accelerometer[3];
extern int32_t magnetometer[3];
extern long int pressure;
extern long int bar_alt;
extern long int bar_alt_0;
extern int bar_vel;
extern int temperature;
extern int o2;
extern int o3;
extern int co2;
extern unsigned long last_time_sent;
extern int voltage;
extern Servo servo_parachute;
extern Servo servo_sample;
extern int uv_light;
extern int light_vis;
extern int light_ir;
extern int spectroscopy[6];
extern float heading;

extern byte barometer_on;
extern byte radio_on;
extern byte humidity_sensor_on;
extern byte ranging_sensor_on;
extern byte compass_on;
extern byte gsm_on;
extern byte gps_on;
extern byte light_sensor_on;
extern byte uv_sensor_on;
extern byte sd_on;
extern byte compass2_on;
extern byte spectroscop_on;
extern byte SD_on;
extern byte i2c_on;
extern byte init_state;

#define INIT 0
#define BOOTING 1
#define WAITING_FOR_RELEASE 2
#define OPENING_ARMS 3
#define BREAKING 4
#define FLYING 5
#define LANDING 6
#define LANDED 7
#define SLEEPING 8
#define TESTING 9
#define PARACHUTING 10
#define LAUNCHING 11

extern byte flight_state;

void send_data();
void send_init();

void changeState(int new_state);

void waitingForRelease();
void openingArms();
void breaking();
void flying();
void landing();
void landed();
void sleeping();
void testing();
void parachuting();
void launching();

void runState();

#endif //CANSAT_STATES_H
