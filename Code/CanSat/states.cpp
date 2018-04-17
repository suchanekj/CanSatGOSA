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

#include "states.h"

float old_speed_ahead;
float old_speed_up;

int armDistance[4];
int humid;
int32_t accelerometer[3];
int32_t magnetometer[3];
long int bar_alt;
long int pressure;
int temperature;
unsigned long last_time_sent;
int flight_state;
Servo servo;

void send_init() {
    char str[60] = {0};
    int len;
    sprintf(str,"state,temperature,pressure,bar_alt,UV,humid,armDistance[4],accelerometer[3],magnetometer[3],hours,minutes,seconds,latitude,longitude,altitude_cm,velocity_n,velocity_e,velocity_d");
    for(len = 0; len < 60 && str[len]; len++);
    transmitting_send(str, len);
}

void send_data() {
    long int data[25] = {flight_state, temperature, pressure, bar_alt, UV, humid,
                  armDistance[0], armDistance[1], armDistance[2], armDistance[3],
                  accelerometer[0], accelerometer[1], accelerometer[2],
                  magnetometer[0], magnetometer[1], magnetometer[2],
                  fix.dateTime.hours, fix.dateTime.minutes, fix.dateTime.seconds,
                  fix.latitudeL(), fix.longitudeL(), fix.altitude_cm(),
                  fix.velocity_north, fix.velocity_east, fix.velocity_down};
    transmitting_send(data, 25);
}

void runState() {
    switch(flight_state) {
        case WAITING_FOR_RELEASE:
            waitingForRelease();
            break;
        case OPENING_ARMS:
            openingArms();
            break;
        case BREAKING:
            breaking();
            break;
        case FLYING:
            flying();
            break;
        case LANDING:
            landing();
            break;
        case LANDED:
            landed();
            break;
        case SLEEPING:
            sleeping();
            break;
    }

}

void waitingForRelease() {
    //if(last_time_sent == 0) send_init();
    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}

void openingArms() {
    set_speed(0, 0, 1000, -1000);
    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}

void breaking() {
    set_speed(0, 0, 0, 1000);
    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}

void flying() {
    float X = (DESTINATION_LON - fix.longitude()) * EARTH_RADIUS_M * RAD_PER_DEGREE * cos(fix.latitude());
    float Y = (DESTINATION_LAT - fix.latitude()) * EARTH_RADIUS_M * RAD_PER_DEGREE;
    float H = DESTINATION_ALT - fix.altitude_cm() * 100;
    float X2 = X * X;
    float Y2 = Y * Y;
    float Distance = sqrt(X2 + Y2);
    float speed_ahead = min(Distance / (H + 0,1) * 100, 100);
    float speed_up = 100;

    old_speed_ahead += speed_ahead - sqrt(fix.velocity_east * fix.velocity_east + fix.velocity_north * fix.velocity_north);
    old_speed_up += speed_up + fix.velocity_down;

    old_speed_up = min(old_speed_up, 1000);
    old_speed_up = max(old_speed_up, 0);

    old_speed_ahead = min(old_speed_ahead, 400);
    old_speed_ahead = max(old_speed_ahead, -400);

    float rotation = (atan2(X, Y) - atan2(magnetometer[0], magnetometer[1]) /* fix.heading()*/ * RAD_PER_DEGREE) * 200;

    DEBUG_SERIAL.print("Setting speed ");
    DEBUG_SERIAL.print(old_speed_ahead);
    DEBUG_SERIAL.print(" 0 ");
    DEBUG_SERIAL.print(rotation);
    DEBUG_SERIAL.print(" ");
    DEBUG_SERIAL.println(old_speed_up);
    set_speed(old_speed_ahead, 0, rotation, old_speed_up);
    DEBUG_SERIAL.print("Speed set");
    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}

void landing() {

    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}

void landed() {

    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}

void sleeping() {
    delay(60000);
    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}
