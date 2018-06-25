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

#ifndef CANSAT_SIM808_H
#define CANSAT_SIM808_H

#define GSM_POWER_KEY 48
#define GSM_SLEEP 50
#define GSM_WAIT_FOR_POWER_UP 10000
#define GSM_SERIAL Serial2
#define DEBUG
#define DEBUG_SERIAL Serial

#include <Arduino.h>

void power_on();
int8_t sendATcommand(char* ATcommand, char* expected_answer, unsigned int timeout);
void sendsms();
void sendsms1();
void makevoicecall();
void makevoicecall1();
void sendemail();
void GSM_init();

#endif //CANSAT_SIM808_H
