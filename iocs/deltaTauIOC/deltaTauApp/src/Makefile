TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

# The following are used for debugging messages.
#!USR_CXXFLAGS += -DDEBUG

#=============================
# Build the IOC application

PROD_IOC = deltaTau
# deltaTau.dbd will be created and installed
DBD += deltaTau.dbd

# deltaTau.dbd will be made up from these files:
deltaTau_DBD += base.dbd

# Include dbd files from all support applications:
#ifdef ASYN
deltaTau_DBD += asyn.dbd
#endif
deltaTau_DBD += motorSupport.dbd
deltaTau_DBD_vxWorks += devDeltaTau.dbd

# Add all the support libraries needed by this IOC
deltaTau_LIBS_vxWorks += DeltaTau
deltaTau_LIBS += motor
#ifdef ASYN
deltaTau_LIBS += asyn
#endif
#ifdef SNCSEQ
deltaTau_LIBS += seq pv
#endif

# deltaTau_registerRecordDeviceDriver.cpp derives from deltaTau.dbd
deltaTau_SRCS += deltaTau_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
deltaTau_SRCS_DEFAULT += deltaTauMain.cpp
deltaTau_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#deltaTau_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
deltaTau_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

