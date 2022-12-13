# The IC101 module

This module enables communication with a Pyramid Technical Consultants
IC101 - Precision Electrometer via a serial connection using the com-port or
a moxa tcp server between an EPICS IOC and the device.

## Requirements
Mandatory for the usage of this module is a working EPICS base installation.
The module was tested with EPICS base 1.15.

Required modules are:
- asyn
- stream
- calc
- autosave
- seq
These modules comes with the synApps package from APS. The IC101 driver was
tested with synApps version 6.1.

The IC101 module supports a graphical user interface which requires an EDM
installation.

## Installation

Check "configure/RELEASE" and correct the path to the epics base directory and the
required support modules.

Run "make" in TOP directory of the modules.

The file "iocBoot/iocIC101/st.cmd" can be used as an example, how to use
this module.

The IC101 should be set to mode:3 - RS-232 ASCII communication, 115kbps.
