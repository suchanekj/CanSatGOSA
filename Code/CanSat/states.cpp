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

int armDistance;
int humid;
int32_t accelerometer[3];
int32_t magnetometer[3];
long int bar_alt;
long int pressure;
int temperature;
unsigned long last_time_sent;
int flight_state;
int voltage;
Servo servo;

void send_init() {
    char str[180] = {0};
    int len, start = 0;
    sprintf(str,"state,temperature,pressure,bar_alt,UV,humid,armDistance[4],accelerometer[3],magnetometer[3],voltage,hours,minutes,seconds,latitude,longitude,altitude_cm,velocity_n,velocity_e,velocity_d");
    do {
        for(len = 0; len < 60 && str[len]; len++);
        transmitting_send(str + start, len);
        start += len;
    } while(len == 60);
}

void send_data() {
    long int data[25] = {flight_state, temperature, pressure, bar_alt, UV, /*humid,*/
                  /*armDistance[0], armDistance[1],*/ armDistance, /*armDistance[3],*/
                  accelerometer[0], accelerometer[1], accelerometer[2],
                  magnetometer[0], magnetometer[1], magnetometer[2],
                  my_fix.dateTime.hours, my_fix.dateTime.minutes, my_fix.dateTime.seconds,
                  my_fix.latitudeL(), my_fix.longitudeL(), my_fix.altitude_cm(),
                  my_fix.velocity_north, my_fix.velocity_east, my_fix.velocity_down};
    transmitting_send(data, 21);
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
        case TESTING:
            testing();
            break;
        case PAR_FLY:
            par_fly();
            break;
        case PAR_WAIT:
            par_wait();
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
    float X = (DESTINATION_LON - my_fix.longitude()) * EARTH_RADIUS_M * RAD_PER_DEGREE * cos(my_fix.latitude());
    float Y = (DESTINATION_LAT - my_fix.latitude()) * EARTH_RADIUS_M * RAD_PER_DEGREE;
    float H = DESTINATION_ALT - my_fix.altitude_cm() * 100;
    float X2 = X * X;
    float Y2 = Y * Y;
    float Distance = sqrt(X2 + Y2);
    float speed_ahead = min(Distance / (H + 0,1) * 100, 100);
    float speed_up = -100;

    old_speed_ahead += speed_ahead - sqrt(my_fix.velocity_east * my_fix.velocity_east + my_fix.velocity_north * my_fix.velocity_north);
    old_speed_up += speed_up + my_fix.velocity_down;

    old_speed_up = min(old_speed_up, 1000);
    old_speed_up = max(old_speed_up, 0);

    old_speed_ahead = min(old_speed_ahead, 400);
    old_speed_ahead = max(old_speed_ahead, -400);

    float rotation = (atan2(X, Y) - atan2(magnetometer[0], magnetometer[1]) /* my_fix.heading()*/ * RAD_PER_DEGREE) * 200;

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

unsigned long int servo_time = 15000;

void landed() {
    if(millis() - servo_time < 2000) servo.write(-180);
    else if(millis() - servo_time < 4000) servo.write(180);
    else servo_time = millis();
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

void testing() {
    float X = (DESTINATION_LON - my_fix.longitude()) * EARTH_RADIUS_M * RAD_PER_DEGREE * cos(my_fix.latitude());
    float Y = (DESTINATION_LAT - my_fix.latitude()) * EARTH_RADIUS_M * RAD_PER_DEGREE;
    float H = DESTINATION_ALT - my_fix.altitude_cm() * 100;
    float X2 = X * X;
    float Y2 = Y * Y;
    float Distance = sqrt(X2 + Y2);
    float speed_ahead = min(Distance / (H + 0,1) * 100, 100);
    float speed_up = 100;

    old_speed_ahead += speed_ahead - sqrt(my_fix.velocity_east * my_fix.velocity_east + my_fix.velocity_north * my_fix.velocity_north);
    old_speed_up += speed_up - armDistance;

    old_speed_up = min(old_speed_up, 1000);
    old_speed_up = max(old_speed_up, 0);

    old_speed_ahead = min(old_speed_ahead, 400);
    old_speed_ahead = max(old_speed_ahead, -400);

    float rotation = (atan2(X, Y) - atan2(magnetometer[0], magnetometer[1]) /* my_fix.heading()*/ * RAD_PER_DEGREE) * 200;

    DEBUG_SERIAL.print("Setting speed ");
    DEBUG_SERIAL.print(old_speed_ahead);
    DEBUG_SERIAL.print(" 0 ");
    DEBUG_SERIAL.print(rotation);
    DEBUG_SERIAL.print(" ");
    DEBUG_SERIAL.println(old_speed_up);
    set_speed(0, 0, 0, old_speed_up);
    DEBUG_SERIAL.print("Speed set");
    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}

unsigned long int started_flying;

void par_fly() {
    if(bar_alt - DESTINATION_ALT < 5000 && armDistance < 50 || millis() - started_flying > 500000) {
      flight_state = LANDED;
      servo_time = millis();
    }
    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}

void par_wait() {
    if(bar_alt - DESTINATION_ALT > 10000) {
      flight_state = PAR_FLY;
      started_flying = millis();
    }
    if(millis() - last_time_sent > 500) {
        send_data();
        last_time_sent = millis();
    }
}
