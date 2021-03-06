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

#include "_Transmitting.h"
#include "_states.h"
#include "_config.h"

#include <SD.h>
#include <SPI.h>

RFM69 radio;

void transmitting_init() {
}

void transmitting_send(char message[], int len) {
#ifdef DEBUG
    DEBUG_SERIAL.println(message);
#endif
#ifdef RADIO
    if(radio_on)
        radio.send(GATEWAYID, message, len);
#endif
#ifdef SD_CARD
    if(sd_on) {
        File dataFile = SD.open("datalog.txt", FILE_WRITE);

        // if the file is available, write to it:
        if (dataFile) {
            dataFile.println(message);
            dataFile.close()
        }
    }
#endif
}

void transmitting_send(long int data[], int size, int messageId) {
    const int len = 60;
    char message[len];
    int end = 0;
    sprintf(message, "[%u]", messageId);
    while (end < len && message[end]) end++;
    for (int i = 0; i < size; i++) {
        if(end == 0) {
            sprintf(message, "[%u]", messageId);
            while (end < len && message[end]) end++;
        }
        if (end > 0) {
            sprintf(message + end, ";");
            end++;
        }
        sprintf(message + end, "%ld", data[i]);
        while (end < len && message[end]) end++;
        if (end >= len - 13) {
            end+=2;
            message[end - 2] = '&';
            message[end - 1] = 0;
            transmitting_send(message, end);
            end = 0;
        }
    }
    transmitting_send(message, end);
}
