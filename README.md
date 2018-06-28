![Alt text](https://github.com/suchanekj/CanSatGOSA/blob/master/Logo_final.png)

# About
CanSat code is software for autonomous exploration and landings of probe "CanSat" developed by Gymnazium Opatov Space Agency especially by Jakub Suchánek.

The whole code is using following subcodes:
* GroundStation - incoming datas of pressure, position, time and temperature
* Cansat - used libraries
* Final report (Detail information about the probe in LaTex article. Unfortunately only in Czech.)
* Analysis - our own atmospheric model running on data from CanSat

# Support
In case you need help with use of our program or support us, you can contact us on our public email dotazy@gosa.cz or on email of programming director suchanek989@seznam.cz

# Contributing

Contributions are welcome and encouraged.  You can contribute in many ways:

* Documentation updates and corrections.
* How-To guides - received help? Help others!
* Bug reporting & fixes.
* New feature ideas & suggestions.

# Requirements
* Hardware requirements: qbcan for matching ports or an AVR microcontroller with RFM69HW (will have to edit port specifications)
* Idealy used for original construction of CanSat: https://github.com/suchanekj/CanSatGOSA/tree/master/Schematics
* Also used for original construction of CanSat 2.0: https://github.com/suchanekj/CanSatGOSA/tree/master/CanSat2.0/Schematics (in development)
* Software requirements: AVR chip programmmer

# Used code
* Uses the RFM69 Library from: Feix Rusu (2014), felix@lowpowerlab.com http://lowpowerlab.com/
* Inspired by qbcan library and hardware http://doc.open-cosmos.com/Qbcan_modular

# Open Source / Contributors
CanSat software that is **open source** and is available free of charge without warranty to all users.

Current contributors:
* Suchánek, Jakub (suchanekj)
* Novotný, Patrik  (PatriktheAstronomer)
* Vítek, Martin (MArtytraM99)
* Zeman, Jakub (Jakubzmn)
* Völfl, Lukáš (LukasVolfl)
# Versions:
* 1.0 Groundstation subcode created and README added 29/03/2018
* 1.1 CanSat subcode created (**it is not completed**) and Model files completed 01/04/2018
* 1.2 Final report (LaTex article) created (**it is not completed**) 03/04/2018
* 1.3 Final report (LaTex article) completed 12/04/2018
* 2.0 New contributers, Analysis, CanSat 2.0 3D printed parts and PLR.pdf (Pre-launch report) added 18/06/2018
* 2.1 Analysis part 2 completed, chamber software added 28/06/2018
