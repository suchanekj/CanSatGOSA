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

#include "drone.h"

Servo roll, pitch, yaw, trottle, aux1, aux2, aux3, aux4;

void drone_init() {
    roll.attach(FC_PWM_1);
    pitch.attach(FC_PWM_2);
    yaw.attach(FC_PWM_3);
    trottle.attach(FC_PWM_4);
    aux1.attach(FC_PWM_5);
    aux2.attach(FC_PWM_6);
    aux3.attach(FC_PWM_7);
    aux4.attach(FC_PWM_8);
}

void set_speed(int forward, int side, int rotation, int up) {
    if(forward != 0 || side != 0 || rotation != 0 || up != 0) aux1.writeMicroseconds(1900);
    else aux1.writeMicroseconds(1100);
    pitch.writeMicroseconds(1500 + forward);
    yaw.writeMicroseconds(1500 + rotation);
    trottle.writeMicroseconds(1000 + up);
    roll.writeMicroseconds(1500 + side);
}

void drone_disable() {
    pitch.writeMicroseconds(1500);
    yaw.writeMicroseconds(1500);
    trottle.writeMicroseconds(1000);
    roll.writeMicroseconds(1500);
}
