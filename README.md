# motorDeltaTau
EPICS motor drivers for the following [Delta Tau](http://www.deltatau.com/) controllers: PMAC VME


motorDeltaTau is a submodule of [motor](https://github.com/epics-modules/motor).  When motorDeltaTau is built in the ``motor/modules`` directory, no manual configuration is needed.

motorDeltaTau can also be built outside of motor by copying it's ``EXAMPLE_RELEASE.local`` file to ``RELEASE.local`` and defining the paths to ``MOTOR`` and itself.

motorDeltaTau contains an example IOC that is built if ``CONFIG_SITE.local`` sets ``BUILD_IOCS = YES``.  The example IOC can be built outside of driver module.
