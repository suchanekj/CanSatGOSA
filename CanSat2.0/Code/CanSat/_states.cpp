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

#include "_states.h"
#include "math.h"
#include "USBAPI.h"
//#include "GPS.h"
#include <EEPROM.h>

float old_speed_ahead;
float old_speed_up;

int bottom_distance;
int humid;
int32_t accelerometer[3];
int32_t magnetometer[3];
long int bar_alt;
long int bar_alt_0;
long int pressure;
int temperature;
unsigned long last_time_sent;
byte flight_state;
int voltage;
Servo servo_parachute;
Servo servo_sample;
int o2;
int o3;
int co2;
int bar_vel = 0;
int uv_light;
int light_vis;
int light_ir;
int spectroscopy[6];
float heading;

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
byte compass2_on;
byte spectroscop_on;
byte SD_on;
byte i2c_on;
byte init_state;

int sending_counter;

void send_init() {
//    char str[180] = {0};
//    int len, start = 0;
//    sprintf(str,"state,temperature,pressure,bar_alt,co2,o2,o3,humid,distance[4],accelerometer[3],magnetometer[3],voltage,hours,minutes,seconds,latitude,longitude,altitude_cm,velocity_n,velocity_e,velocity_d");
//    do {
//        for(len = 0; len < 60 && str[len]; len++);
//        transmitting_send(str + start, len);
//        start += len;
//    } while(len == 60);
    sending_counter = 0;
}

void send_data() {
    long int data[14] = {flight_state, voltage, temperature, pressure, bar_alt, humid,
                  co2, o2, uv_light, light_vis, light_ir,
                  magnetometer[0], magnetometer[1], magnetometer[2]/*,
                  my_fix.dateTime.hours, my_fix.dateTime.minutes, my_fix.dateTime.seconds,
                  my_fix.latitudeL(), my_fix.longitudeL(), my_fix.altitude_cm(),
                  my_fix.velocity_north, my_fix.velocity_east, my_fix.velocity_down*/};
    transmitting_send(data, 14, sending_counter++);
}

void changeState(int new_state) {
    EEPROM.put(EEPROM_STATE, new_state);
    flight_state = new_state;
}

void runState() {
    switch(flight_state) {
        case INIT:
            changeState(WAITING_FOR_RELEASE);
        case BOOTING:
            changeState(WAITING_FOR_RELEASE);
        case WAITING_FOR_RELEASE:
            waitingForRelease();
            return;
        case OPENING_ARMS:
            openingArms();
            return;
        case BREAKING:
            breaking();
            return;
        case FLYING:
            flying();
            return;
        case LANDING:
            landing();
            return;
        case LANDED:
            landed();
            return;
        case SLEEPING:
            sleeping();
            return;
        case TESTING:
            testing();
            return;
        case PARACHUTING:
            parachuting();
            return;
    }

}

void waitingForRelease() {
    if(millis() - last_time_sent > 500) {
        last_time_sent = millis();
        send_data();
    }
    if(bar_vel > 500) changeState(OPENING_ARMS);
}

void openingArms() {
    set_speed(0, 0, 1000, -500);
    if(millis() - last_time_sent > 500) {
        last_time_sent = millis();
        send_data();
    }
    changeState(BREAKING);
}

void breaking() {
    set_speed(0, 0, 0, 1000);
    if(millis() - last_time_sent > 500) {
        last_time_sent = millis();
        send_data();
    }
    if(bar_vel <= 500) changeState(FLYING);
}

void flying() {

    float speed_up = -120;

    old_speed_up += speed_up + bar_vel;

    old_speed_up = min(old_speed_up, 1000);
    old_speed_up = max(old_speed_up, 0);

    set_speed(0, 0, 0, old_speed_up);
    if(millis() - last_time_sent > 500) {
        last_time_sent = millis();
        send_data();
    }
    if(bar_alt - DESTINATION_ALT < 10000) {
        changeState(LANDING);
    }
}

int n = 0;

void landing() {
    float speed_up = -(bar_alt - DESTINATION_ALT + 2000) / 120;

    old_speed_up += speed_up + bar_vel;

    old_speed_up = min(old_speed_up, 1000);
    old_speed_up = max(old_speed_up, 0);

    set_speed(0, 0, 0, old_speed_up);

    if(millis() - last_time_sent > 500) {
        last_time_sent = millis();
        send_data();
    }
    if(bar_alt - DESTINATION_ALT < 2000) {
        n++;
        if(n > 20) changeState(LANDING);
    }
}

void landed() {
    set_speed(0, 0, 0, 0);
    servo_sample.write(180);
    delay(500);
    servo_sample.write(0);
    delay(500);
    if(millis() - last_time_sent > 500) {
        last_time_sent = millis();
        send_data();
    }
}

void sleeping() {
    delay(60000);
    if(millis() - last_time_sent > 500) {
        last_time_sent = millis();
        send_data();
    }
}

void testing() {
    old_speed_up += bar_alt_0 + 10 - bar_alt;

    old_speed_up = min(old_speed_up, 1000);
    old_speed_up = max(old_speed_up, 0);

    DEBUG_SERIAL.print("Setting speed ");
    DEBUG_SERIAL.println(old_speed_up);
//    set_speed(0, 0, 0, old_speed_up);
    if(millis() - last_time_sent > 500) {
        last_time_sent = millis();
        send_data();
    }
}


void parachuting() {
    servo_parachute.write(SERVO_PARACUTE_OPEN);
    if(millis() - last_time_sent > 500) {
        last_time_sent = millis();
        send_data();
    }
    if(bar_alt - DESTINATION_ALT < 2000) {
        n++;
        if(n > 20) changeState(LANDING);
    }
}
