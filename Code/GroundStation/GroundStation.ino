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

//Include the required libraries
#include "qbcan.h"
#include <Wire.h>
#include <SPI.h>


//Radio Parameters
#define NODEID        1    //unique for each node on same network
#define NETWORKID     42  //the same on all nodes that talk to each other
#define ENCRYPTKEY    "Suchy Na Mars!!!" //exactly the same 16 characters/bytes on all nodes!

//Radio object
RFM69 radio;
bool promiscuousMode = false; //set to 'true' to sniff all packets on the same network

void setup()
{
  delay(10000);
  //Initialize serial connection for debugging
  Serial.begin(9600);
  Serial.println("CanSat GOSA  Copyright (C) 2018  Jakub Suchanek\nThis program comes with ABSOLUTELY NO WARRANTY.\nThis is free software, and you are welcome to redistribute it\nunder certain conditions. It is protected under GNU GPL v3.0");

  //Delay to give time to the radio to power up (is it really needed?)
  delay(1000);

  //Initialize radio
  radio.initialize(FREQUENCY, NODEID, NETWORKID);
  radio.setHighPower(); //Use the high power capabilities of the RFM69HW
  radio.encrypt(ENCRYPTKEY);
  radio.promiscuous(promiscuousMode);
  Serial.println("Listening at 433 Mhz");

}


byte ackCount = 0;
uint32_t packetCount = 0;
void loop()
{

  if (radio.receiveDone())
  {
    Serial.print("#[");
    Serial.print(++packetCount);
    Serial.print(']');
    Serial.print('['); Serial.print(radio.SENDERID, DEC); Serial.print("] ");
    if (promiscuousMode)
    {
      Serial.print("to ["); Serial.print(radio.TARGETID, DEC); Serial.print("] ");
    }
    for (byte i = 0; i < radio.DATALEN; i++)
      Serial.print((char)radio.DATA[i]);
    Serial.print("   [RX_RSSI:"); Serial.print(radio.RSSI); Serial.print("]");

    if (radio.ACKRequested())
    {
      byte theNodeID = radio.SENDERID;
      radio.sendACK();
      Serial.print(" - ACK sent.");

      // When a node requests an ACK, respond to the ACK
      // and also send a packet requesting an ACK (every 3rd one only)
      // This way both TX/RX NODE functions are tested on 1 end at the GATEWAY
      if (ackCount++ % 3 == 0)
      {
        Serial.print(" Pinging node ");
        Serial.print(theNodeID);
        Serial.print(" - ACK...");
        delay(3); //need this when sending right after reception .. ?
        if (radio.sendWithRetry(theNodeID, "ACK TEST", 8, 0))  // 0 = only 1 attempt, no retries
          Serial.print("ok!");
        else Serial.print("nothing");
      }
    }
    Serial.println();
  }

}



