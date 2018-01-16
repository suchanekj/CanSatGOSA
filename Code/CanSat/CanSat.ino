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

//Pressure sensor object
//BMP180 bmp;

//Radio Parameters
#define NODEID        2    //unique for each node on same network
#define NETWORKID     42  //the same on all nodes that talk to each other
#define GATEWAYID     1    //Receiving node
#define ENCRYPTKEY    "Suchy Na Mars!!!" //exactly the same 16 characters/bytes on all nodes!

//Radio object
char payload[50];
RFM69 radio;

void setup()
{
  //Initialize serial connection for debugging
  Serial.begin(9600);
  Serial.println("CanSat GOSA  Copyright (C) 2018  Jakub Suchanek\nThis program comes with ABSOLUTELY NO WARRANTY.\nThis is free software, and you are welcome to redistribute it\nunder certain conditions. It is protected under GNU GPL v3.0");

  // Initialize pressure sensor.
  //if (bmp.begin())
  //  Serial.println("BMP180 init success");
  //else
  //{
    //In case of error let user know of the problem
    //Serial.println("BMP180 init fail (disconnected?)\n\n");
    //while(1); // Pause forever.
  //}

  //Initialize radio
  radio.initialize(FREQUENCY,NODEID,NETWORKID);
  radio.setHighPower(); //To use the high power capabilities of the RFM69HW
  radio.encrypt(ENCRYPTKEY);
  Serial.println("Transmitting at 433 Mhz");

}

void loop()
{
  double T,P;

  //Send Data
  sprintf(payload,"Hello world!");
  Serial.println(payload);
  radio.send(GATEWAYID, payload, 50);
  Serial.println("Send complete");
  
  delay(500);
}
