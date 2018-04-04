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
#include "config.h"
#include "drone.h"
#include "CanSat.h"

#define WAITING_FOR_RELEASE 0
#define OPENING_ARMS 1
#define BREAKING 2
#define FLYING 3
#define LANDING 4
#define LANDED 5
#define SLEEPING 6

int state;

void waitingForRelease();
void openingArms();
void breaking();
void flying();
void landing();
void landed();
void sleeping();

void runState();

#endif //CANSAT_STATES_H
