TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = IC101
# IC101.dbd will be created and installed
DBD += IC101.dbd

# IC101.dbd will be made up from these files:
IC101_DBD += base.dbd

IC101_DBD += stream.dbd
IC101_DBD += asyn.dbd
IC101_DBD += drvAsynIPPort.dbd
IC101_DBD += calcSupport.dbd

# Include dbd files from all support applications:
#IC101_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#IC101_LIBS += xxx
IC101_LIBS += calc
IC101_LIBS += stream
IC101_LIBS += asyn

# IC101_registerRecordDeviceDriver.cpp derives from IC101.dbd
IC101_SRCS += IC101_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
IC101_SRCS_DEFAULT += IC101Main.cpp
IC101_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#IC101_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
IC101_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

