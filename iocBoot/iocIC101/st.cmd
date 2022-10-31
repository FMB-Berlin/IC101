#!/opt/epics/modules/IC101/bin/linux-x86_64/IC101

## You may have to change IC101 to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## configuration for stream ############################################
epicsEnvSet ("STREAM_PROTOCOL_PATH", ".:/opt/epics/modules/IC101/IC101App/src/")

## Register all support components #####################################
dbLoadDatabase "dbd/IC101.dbd"
IC101_registerRecordDeviceDriver pdbbase

## IC101 via com-port ##################################################
# switch the IC101 to Mode:3 Address:Dont Care
#drvAsynSerialPortConfigure "COM1", "/dev/ttyS0"
#drvAsynSerialPortConfigure "COM1", "/dev/ttyUSB2"
#asynOctetSetInputEos "COM1",0,"\r\n"
#asynOctetSetOutputEos "COM1",0,"\r\n"
#asynSetOption ("COM1", 0, "baud", "115200")
#asynSetOption ("COM1", 0, "bits", "8")
#asynSetOption ("COM1", 0, "parity", "none")
#asynSetOption ("COM1", 0, "stop", "1")
#asynSetOption ("COM1", 0, "clocal", "Y")
#asynSetOption ("COM1", 0, "crtscts", "N")

## IC101 via Moxa TCP Server  ##########################################
# drvAsynIPPortConfigure(portName, hostInfo, Priority, noAutoConnect, noProcessEos)
drvAsynIPPortConfigure("IC101_1", "192.168.10.209:4002",0,0,0)

## Load record instances ###############################################
#dbLoadRecords("db/xxx.db","user=iocuser")
dbLoadTemplate "/opt/epics/modules/IC101/db/IC101.substitutions"

cd "${TOP}/iocBoot/${IOC}"

## Run this to trace the stages of iocInit
#traceIocInit
iocInit

## Start any sequence programs
#seq sncxxx,"user=iocuser"
#seq sncIC101,"user=iocuser"

###Streamdebug#################################################################
var streamDebug 0
###############################################################################

date
##EOF
