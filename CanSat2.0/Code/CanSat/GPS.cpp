//======================================================================
//  Program: ublox.ino
//
//  Prerequisites:
//     1) You have a ublox GPS device
//     2) PUBX.ino works with your device
//     3) You have installed the ubxGPS.* and ubxmsg.* files.
//     4) At least one UBX message has been enabled in ubxGPS.h.
//     5) Implicit Merging is disabled in NMEAGPS_cfg.h.
//
//  Description:  This program parses UBX binary protocal messages from
//     ublox devices.  It shows how to acquire the information necessary
//     to use the GPS Time-Of-Week in many UBX messages.  As an offset
//     from midnight Sunday morning (GPS time), you also need the current 
//     UTC time (this is *not* GPS time) and the current number of GPS 
//     leap seconds.
//
//  Serial is for debug output to the Serial Monitor window.
//
//  License:
//    Copyright (C) 2014-2017, SlashDevin
//
//    This file is part of NeoGPS
//
//    NeoGPS is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    NeoGPS is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with NeoGPS.  If not, see <http://www.gnu.org/licenses/>.
//
//======================================================================

#include "GPS.h"
#include <avr/wdt.h>

gps_fix my_fix;

//------------------------------------------------------------
// Check that the config files are set up properly

#ifndef NMEAGPS_DERIVED_TYPES
#error You must "#define NMEAGPS_DERIVED_TYPES" in NMEAGPS_cfg.h!
#endif

#if !defined(UBLOX_PARSE_STATUS) & !defined(UBLOX_PARSE_TIMEGPS) & \
    !defined(UBLOX_PARSE_TIMEUTC) & !defined(UBLOX_PARSE_POSLLH) & \
    !defined(UBLOX_PARSE_VELNED) & !defined(UBLOX_PARSE_SVINFO) & \
    !defined(UBLOX_PARSE_DOP)

#error No UBX binary messages enabled: no fix data available for fusing.

#endif

#if defined(UBLOX_PARSE_DOP) & \
    (!defined(GPS_FIX_HDOP) & \
      !defined(GPS_FIX_VDOP) & \
      !defined(GPS_FIX_PDOP))
#warning UBX DOP message is enabled, but all GPS_fix DOP members are disabled.
#endif

#ifndef NMEAGPS_RECOGNIZE_ALL
//  Resetting the messages with ublox::configNMEA requires that
  //    all message types are recognized (i.e., the enum has all
  //    values).
#error You must "#define NMEAGPS_RECOGNIZE_ALL" in NMEAGPS_cfg.h!
#endif

//-----------------------------------------------------------------
//  Derive a class to add the state machine for starting up:
//    1) The status must change to something other than NONE.
//    2) The GPS leap seconds must be received
//    3) The UTC time must be received
//    4) All configured messages are "requested"
//         (i.e., "enabled" in the ublox device)
//  Then, all configured messages are parsed and explicitly merged.

class MyGPS : public ubloxGPS {
public:

    enum {
        GETTING_STATUS,
        GETTING_LEAP_SECONDS,
        GETTING_STATUS2,
        GETTING_LEAP_SECONDS2,
        GETTING_UTC,
        RUNNING
    }
            state NEOGPS_BF(8);

    MyGPS(Stream *device) : ubloxGPS(device) {
        state = GETTING_STATUS;
    }

    //--------------------------

    void get_status() {
        static bool acquiring = false;

        if (fix().status == gps_fix::STATUS_NONE) {
            static uint32_t dotPrint;
            bool requestNavStatus = false;

            if (!acquiring) {
                acquiring = true;
                dotPrint = millis();
                DEBUG_PORT.print(F("Acquiring..."));
                requestNavStatus = true;

            } else if (millis() - dotPrint > 1000UL) {
                dotPrint = millis();
//                wdt_reset();
                DEBUG_PORT << '.';

                static uint8_t requestPeriod;
                if ((++requestPeriod & 0x07) == 0)
                    requestNavStatus = true;
            }

            if (requestNavStatus)
                // Turn on the UBX status message
                enable_msg(ublox::UBX_NAV, ublox::UBX_NAV_STATUS);

        } else {
            if (acquiring)
                DEBUG_PORT << '\n';
            DEBUG_PORT << F("Acquired status: ") << (uint8_t) fix().status << '\n';

#if defined(GPS_FIX_TIME) & defined(GPS_FIX_DATE) & \
            defined(UBLOX_PARSE_TIMEGPS)

            if (!enable_msg(ublox::UBX_NAV, ublox::UBX_NAV_TIMEGPS))
                DEBUG_PORT.println(F("enable TIMEGPS failed!"));

            /*if(state == GETTING_STATUS)*/ state = GETTING_LEAP_SECONDS;
//            else state = GETTING_LEAP_SECONDS2;
#else
            start_running();
          state = RUNNING;
#endif
        }
    } // get_status

    //--------------------------

    void get_leap_seconds() {
#if defined(GPS_FIX_TIME) & defined(GPS_FIX_DATE) & \
          defined(UBLOX_PARSE_TIMEGPS)

        if (GPSTime::leap_seconds != 0) {
            DEBUG_PORT << F("Acquired leap seconds: ") << GPSTime::leap_seconds << '\n';

            if (!disable_msg(ublox::UBX_NAV, ublox::UBX_NAV_TIMEGPS))
                DEBUG_PORT.println(F("disable TIMEGPS failed!"));
//            delay(10000);

#if defined(UBLOX_PARSE_TIMEUTC)
            if (!enable_msg(ublox::UBX_NAV, ublox::UBX_NAV_TIMEUTC))
                DEBUG_PORT.println(F("enable TIMEUTC failed!"));
            state = GETTING_UTC;
            wdt_reset();
//            if(state == GETTING_LEAP_SECONDS) state = GETTING_STATUS2;
//            /*else */state = GETTING_UTC;
//            delay(1000);
#else
            start_running();
#endif
        }
#endif

    } // get_leap_seconds

    //--------------------------

    void get_utc() {
#if defined(GPS_FIX_TIME) & defined(GPS_FIX_DATE) & \
          defined(UBLOX_PARSE_TIMEUTC)

        lock();
        bool safe = is_safe();
        NeoGPS::clock_t sow = GPSTime::start_of_week();
        NeoGPS::time_t utc = fix().dateTime;
        unlock();

        if (safe && (sow != 0)) {
            DEBUG_PORT << F("Acquired UTC: ") << utc << '\n';
            DEBUG_PORT << F("Acquired Start-of-Week: ") << sow << '\n';

            start_running();
            wdt_reset();
        }
#endif

    } // get_utc

    //--------------------------

    void start_running() {
        bool enabled_msg_with_time = false;

#if (defined(GPS_FIX_LOCATION) | \
           defined(GPS_FIX_LOCATION_DMS) | \
           defined(GPS_FIX_ALTITUDE)) & \
          defined(UBLOX_PARSE_POSLLH)
        if (!enable_msg(ublox::UBX_NAV, ublox::UBX_NAV_POSLLH))
            DEBUG_PORT.println(F("enable POSLLH failed!"));

        enabled_msg_with_time = true;
#endif

#if (defined(GPS_FIX_SPEED) | defined(GPS_FIX_HEADING)) & \
          defined(UBLOX_PARSE_VELNED)
        if (!enable_msg(ublox::UBX_NAV, ublox::UBX_NAV_VELNED))
            DEBUG_PORT.println(F("enable VELNED failed!"));

        enabled_msg_with_time = true;
#endif

#if defined(UBLOX_PARSE_DOP)
        if (!enable_msg( ublox::UBX_NAV, ublox::UBX_NAV_DOP ))
          DEBUG_PORT.println( F("enable DOP failed!") );
        else
          DEBUG_PORT.println( F("enabled DOP.") );

        enabled_msg_with_time = true;
#endif

#if (defined(GPS_FIX_SATELLITES) | defined(NMEAGPS_PARSE_SATELLITES)) & \
          defined(UBLOX_PARSE_SVINFO)
        if (!enable_msg( ublox::UBX_NAV, ublox::UBX_NAV_SVINFO ))
          DEBUG_PORT.println( F("enable SVINFO failed!") );

        enabled_msg_with_time = true;
#endif

#if defined(UBLOX_PARSE_TIMEUTC)

#if defined(GPS_FIX_TIME) & defined(GPS_FIX_DATE)
        if (enabled_msg_with_time &&
            !disable_msg(ublox::UBX_NAV, ublox::UBX_NAV_TIMEUTC))
            DEBUG_PORT.println(F("disable TIMEUTC failed!"));

#elif defined(GPS_FIX_TIME) | defined(GPS_FIX_DATE)
        // If both aren't defined, we can't convert TOW to UTC,
          // so ask for the separate UTC message.
          if (!enable_msg( ublox::UBX_NAV, ublox::UBX_NAV_TIMEUTC ))
            DEBUG_PORT.println( F("enable TIMEUTC failed!") );
#endif

#endif

        state = RUNNING;
        trace_header(DEBUG_PORT);

    } // start_running

    //--------------------------

    bool running() {
        switch (state) {
            case GETTING_STATUS      :
                get_status();
                break;
            case GETTING_LEAP_SECONDS:
                get_leap_seconds();
                break;
            case GETTING_STATUS2      :
                get_status();
                break;
            case GETTING_LEAP_SECONDS2:
                get_leap_seconds();
                break;
            case GETTING_UTC         :
                get_utc();
                break;
        }

        return (state == RUNNING);

    } // running

} NEOGPS_PACKED;

// Construct the GPS object and hook it to the appropriate serial device
static MyGPS gps(&gpsPort);

#ifdef NMEAGPS_INTERRUPT_PROCESSING

static void GPSisr(uint8_t c) {
    gps.handle(c);
}

#endif

//--------------------------

static void configNMEA(uint8_t rate) {
    for (uint8_t i = NMEAGPS::NMEA_FIRST_MSG; i <= NMEAGPS::NMEA_LAST_MSG; i++) {
        ublox::configNMEA(gps, (NMEAGPS::nmea_msg_t) i, rate);
    }
}

//--------------------------

static void disableUBX() {
    gps.disable_msg(ublox::UBX_NAV, ublox::UBX_NAV_TIMEGPS);
    gps.disable_msg(ublox::UBX_NAV, ublox::UBX_NAV_TIMEUTC);
    gps.disable_msg(ublox::UBX_NAV, ublox::UBX_NAV_VELNED);
    gps.disable_msg(ublox::UBX_NAV, ublox::UBX_NAV_POSLLH);
    gps.disable_msg(ublox::UBX_NAV, ublox::UBX_NAV_DOP);
}

//--------------------------

void GPS_init() {

    DEBUG_PORT.print(F("ublox binary protocol example started.\n"));
    DEBUG_PORT << F("fix object size = ") << sizeof(gps.fix()) << '\n';
    DEBUG_PORT << F("ubloxGPS object size = ") << sizeof(ubloxGPS) << '\n';
    DEBUG_PORT << F("MyGPS object size = ") << sizeof(gps) << '\n';
    DEBUG_PORT.println(F("Looking for GPS device on " GPS_PORT_NAME));
    DEBUG_PORT.flush();

    // Start the UART for the GPS device
#ifdef NMEAGPS_INTERRUPT_PROCESSING
    gpsPort.attachInterrupt(GPSisr);
#endif
    gpsPort.begin(9600);

    // Turn off the preconfigured NMEA standard messages
    configNMEA(0);

    // Turn off things that may be left on by a previous build
    disableUBX();

    while (!gps.running())
        if (gps.available(gpsPort))
            gps.read();
}

//--------------------------

void GPS_run() {
    //while (!(gps.available(gpsPort)));
    if (gps.available(gpsPort)) {
//    DEBUG_PORT.println(millis());*/
        my_fix = gps.read();
        trace_all(DEBUG_PORT, gps, gps.read());
//    DEBUG_PORT.println(millis());
    }

    // If the user types something, reset the message configuration
    //   back to a normal set of NMEA messages.  This makes it
    //   convenient to switch to another example program that
    //   expects a typical set of messages.  This also saves
    //   putting those config messages in every other example.
}
