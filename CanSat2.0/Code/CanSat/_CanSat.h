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

#include "_config.h"
#ifdef RADIO
#include "RFM69.h"
#endif
#ifdef BAROMETER
#include "BMP180.h"
#endif
#ifdef HUMIDITY_SENSOR
#include "Adafruit_Si7021.h"
#endif
#ifdef RANGING_SENSOR
#include "VL53L0X.h"
#endif
#ifdef COMPASS
#include "LSM303AGR_ACC_Sensor.h"
#include "LSM303AGR_MAG_Sensor.h"
#endif
#ifdef COMPASS2
#include "Adafruit_HMC5883_U.h"
#endif

//#include "GPS.h"

#ifdef LIGHT_SENSOR
#include "Adafruit_TSL2591.h"
#endif
#ifdef UV_SENSOR
#include "Adafruit_VEML6070.h"
#endif
#ifdef SPECTROSCOP
#include "AS726X.h"
#endif

#include "_Transmitting.h"
#include "_drone.h"
#include "_states.h"
#endif //CANSAT_CANSAT_H

