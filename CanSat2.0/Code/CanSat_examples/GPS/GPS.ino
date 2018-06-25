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
#include <Wire.h>
#include <SPI.h>
#include <SoftwareSerial.h>
#include "qbcan.h"
#include "NMEAGPS.h"

//Radio Parameters
#define NODEID        2    //unique for each node on same network
#define NETWORKID     42  //the same on all nodes that talk to each other
#define GATEWAYID     1    //Receiving node
#define ENCRYPTKEY    "Suchy Na Mars!!!" //exactly the same 16 characters/bytes on all nodes!

#define gpsPort Serial1
#define GPS_PORT_NAME "Serial1"
#define DEBUG_PORT Serial

//Pressure sensor object
BMP180 bmp;
//GPS object
static NMEAGPS  gps;
static gps_fix  fix;
//Radio object
char payload[50];
RFM69 radio;

static void doSomeWork()
{
  // Print all the things!

  double T,P;
  
  // Get a new pressure reading:
 // bmp.getData(T,P);

 //   DEBUG_PORT.println(millis());

  sprintf(payload, "%d-%d-%d %d:%d:%d N%" PRId32 " E%" PRId32 " A%" PRId32 " T%d P%d.",
                      fix.dateTime.year, fix.dateTime.month, fix.dateTime.date,
                      fix.dateTime.hours, fix.dateTime.minutes, fix.dateTime.seconds,
                      fix.latitudeL(), fix.longitudeL(), fix.altitude_cm(), (int)T,(int)P);

  //Send Data
 //   DEBUG_PORT.println(millis());
 // radio.send(GATEWAYID, payload, 50);
 //   DEBUG_PORT.println(millis());
    DEBUG_PORT.println(payload);

} // doSomeWork

//------------------------------------
//  This is the main GPS parsing loop.

static void GPSloop()
{
  while (gps.available( gpsPort )) {
    fix = gps.read();
    doSomeWork();
  }

}

void setup()
{

  
  DEBUG_PORT.begin(9600);
  DEBUG_PORT.println("REBOOT");
  while (!DEBUG_PORT)
    ;

  DEBUG_PORT.print( F("NMEA.INO: started\n") );
  DEBUG_PORT.print( F("  fix object size = ") );
  DEBUG_PORT.println( sizeof(gps.fix()) );
  DEBUG_PORT.print( F("  gps object size = ") );
  DEBUG_PORT.println( sizeof(gps) );
  DEBUG_PORT.println( F("Looking for GPS device on " GPS_PORT_NAME) );

  #ifndef NMEAGPS_RECOGNIZE_ALL
    #error You must define NMEAGPS_RECOGNIZE_ALL in NMEAGPS_cfg.h!
  #endif

  #ifdef NMEAGPS_INTERRUPT_PROCESSING
    #error You must *NOT* define NMEAGPS_INTERRUPT_PROCESSING in NMEAGPS_cfg.h!
  #endif

  #if !defined( NMEAGPS_PARSE_GGA ) & !defined( NMEAGPS_PARSE_GLL ) & \
      !defined( NMEAGPS_PARSE_GSA ) & !defined( NMEAGPS_PARSE_GSV ) & \
      !defined( NMEAGPS_PARSE_RMC ) & !defined( NMEAGPS_PARSE_VTG ) & \
      !defined( NMEAGPS_PARSE_ZDA ) & !defined( NMEAGPS_PARSE_GST )

    DEBUG_PORT.println( F("\nWARNING: No NMEA sentences are enabled: no fix data will be displayed.") );

  #else
    if (gps.merging == NMEAGPS::NO_MERGING) {
      DEBUG_PORT.print  ( F("\nWARNING: displaying data from ") );
      DEBUG_PORT.print  ( gps.string_for( LAST_SENTENCE_IN_INTERVAL ) );
      DEBUG_PORT.print  ( F(" sentences ONLY, and only if ") );
      DEBUG_PORT.print  ( gps.string_for( LAST_SENTENCE_IN_INTERVAL ) );
      DEBUG_PORT.println( F(" is enabled.\n"
                            "  Other sentences may be parsed, but their data will not be displayed.") );
    }
  #endif

  DEBUG_PORT.print  ( F("\nGPS quiet time is assumed to begin after a ") );
  DEBUG_PORT.print  ( gps.string_for( LAST_SENTENCE_IN_INTERVAL ) );
  DEBUG_PORT.println( F(" sentence is received.\n"
                        "  You should confirm this with NMEAorder.ino\n") );

  DEBUG_PORT.flush();

  gpsPort.begin( 9600 );
  
/*
  // Initialize pressure sensor.
  if (bmp.begin())
    DEBUG_PORT.println("BMP180 init success");
  else
  {
    //In case of error let user know of the problem
    while(1); // Pause forever.
  }
*//*
  //Initialize radio
  radio.initialize(FREQUENCY,NODEID,NETWORKID);
  radio.setHighPower(); //To use the high power capabilities of the RFM69HW
  radio.encrypt(ENCRYPTKEY);
  radio.setFrequency(434200000);
  DEBUG_PORT.print("Transmitting at ");
  int f = radio.getFrequency();
  DEBUG_PORT.println(f);*/
}

void loop()
{
  GPSloop();
}
