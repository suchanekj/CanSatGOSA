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

#include "Transmitting.h"

RFM69 radio;
bool radio_enabled, sms_enabled, email_enabled;

void transmitting_init(bool use_radio, bool use_sms, bool use_email) {
    radio_enabled = use_radio;
    sms_enabled = use_sms;
    email_enabled = use_email;
#ifdef RADIO
    //Initialize radio
    radio.setCS(RFM_SS);
    radio.initialize(FREQUENCY,NODEID,NETWORKID);
    radio.setHighPower(); //To use the high power capabilities of the RFM69HW
    radio.encrypt(ENCRYPTKEY);
    radio.setFrequency(434200000);
#ifdef DEBUG
    DEBUG_SERIAL.print("Transmitting at ");
    int f = radio.getFrequency();
    DEBUG_SERIAL.println(f);
#endif
#endif
}

void transmitting_send(char message[], int len) {
#ifdef DEBUG
    DEBUG_SERIAL.println(message);
#endif
    radio.send(GATEWAYID, message, len);
}

void transmitting_send(long int data[], int size) {
    const int len = 60;
    char message[len];
    int end = 0;
    for(int i = 0; i < size; i++) {
        if(end > 0) {
            sprintf(message + end, ";");
            end++;
        }
        sprintf(message + end, "%ld", data[i]);
        while(end < len && message[end]) end++;
        if(end >= len - 12) {
          message[end - 1] = '&';
          transmitting_send(message, end);
          end = 0;
        }
    }
    if(!end) return;
    transmitting_send(message, end);
}
