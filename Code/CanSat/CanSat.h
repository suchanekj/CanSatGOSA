/*
  CanSat GOSA
  Code for a tiny probe to investigate existance of life
  Copyright (C) 2018  Jakub SuchĂˇnek, suchanek989@seznam.cz
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

#ifndef CANSAT_CANSAT_H
#define CANSAT_CANSAT_H

#include <Arduino.h>
#include "config.h"
#ifdef RADIO
#include "RFM69.h"
#endif
#ifdef BAROMETER
#include "SparkFunMPL3115A2.h"
#endif
#ifdef HUMIDITY_SENSOR
#include "HIH7130.h"
#endif
#ifdef RANGING_SENSOR
#include "VL53L0X.h"
#endif
#ifdef COMPASS
#include "LSM303AGR_ACC_Sensor.h"
#include "LSM303AGR_MAG_Sensor.h"
#endif
#ifdef GSM
#include "SIM808.h"
#endif
#ifdef GPS
#include "GPS.h"
#endif
#include "Transmitting.h"
#include "drone.h"
#include "states.h"
#endif //CANSAT_CANSAT_H

