# The IC101 module

This module supports the IC101 via com-port or via a moxa tcp server
for serial connection between the IOC and the device.

## Required support modules

Required are:
- asyn
- stream
- calc
- autosave
- seq

## Installation

Check "configure/RELEASE" and correct the path to the epics/base and the
required support modules.

Run "make" in TOP directory of the modules.

The file "iocBoot/iocIC101/st.cmd" can be used as an example, how to use
this module.

The IC101 should be set to mode:3 - RS-232 ASCII communication, 115kbps.
