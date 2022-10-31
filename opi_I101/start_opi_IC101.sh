export EPICS_CA_AUTO_ADDR_LIST=NO
export EPICS_CA_ADDR_LIST=127.0.0.1
export OPIDIR=/opt/epics/modules/IC101
export EDMDATAFILES=$OPIDIR:$(find $OPIDIR -name "opi_*" | tr '\n' ':')

/opt/epics/extensions/bin/linux-x86_64/edm -x -m "P=FMBB,R=BL01,NAME=TEST" -eolc IC101.edl
