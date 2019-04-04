## Example vxWorks startup file

## The following is needed if your board support package doesn't at boot time
## automatically cd to the directory containing its startup script
#cd "/home/username/epics/iocs/deltaTauIOC/iocBoot/iocDeltaTau"

< cdCommands
#< ../nfsCommands

cd topbin

ld 0,0, "deltaTau.munch"

cd top

## Register all support components
dbLoadDatabase "dbd/deltaTau.dbd"
deltaTau_registerRecordDeviceDriver pdbbase

cd startup

## motorUtil (allstop & alldone)
dbLoadRecords("$(MOTOR)/db/motorUtil.db", "P=deltaTau:")

## 
< pmac.cmd

iocInit

## motorUtil (allstop & alldone)
motorUtilInit("deltaTau:")

# Boot complete
