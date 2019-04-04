## Example vxWorks startup file

## The following is needed if your board support package doesn't at boot time
## automatically cd to the directory containing its startup script
#cd "/home/oxygen40/KPETERSN/epics/motor-split/DeltaTau/motorDeltaTauBlank/iocs/deltaTauIOC/iocBoot/iocDeltaTau"

< cdCommands
#< ../nfsCommands

cd topbin

## You may have to change deltaTau to something else
## everywhere it appears in this file
ld 0,0, "deltaTau.munch"

## Register all support components
cd top
dbLoadDatabase "dbd/deltaTau.dbd"
deltaTau_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadTemplate "db/deltaTau.substitutions"
#dbLoadRecords "db/deltaTau.db", "user=kpetersn"

cd startup
iocInit

## Start any sequence programs
#seq &sncxxx, "user=kpetersn"
