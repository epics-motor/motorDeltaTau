# motorDeltaTau Releases

## __R1-0-2 (2023-04-11)__
R1-0-2 is a release based on the master branch.

### Changes since R1-0-1

#### New features
* None

#### Modifications to existing features
* None

#### Bug fixes
* None

#### Continuous integration
* Added ci-scripts (v3.0.1)
* Configured to use Github Actions for CI

## __R1-0-1 (2020-05-11)__
R1-0-1 is a release based on the master branch.  

### Changes since R1-0

#### New features
* None

#### Modifications to existing features
* None

#### Bug fixes
* Commit [ab27eae](https://github.com/epics-motor/motorDeltaTau/commit/ab27eae3eb3f81b81ec23204448189bac9440ddf): Include ``$(MOTOR)/modules/RELEASE.$(EPICS_HOST_ARCH).local`` instead of ``$(MOTOR)/configure/RELEASE``
* Commit [2a03146](https://github.com/epics-motor/motorDeltaTau/commit/2a0314673bb0250b16361842a3d3680d5d2992dd): Fix for VxWorks build errors caused by changes to common motor driver code

## __R1-0 (2019-04-18)__
R1-0 is a release based on the master branch.  

### Changes since motor-6-11

motorDeltaTau is now a standalone module, as well as a submodule of [motor](https://github.com/epics-modules/motor)

#### New features
* motorDeltaTau can be built outside of the motor directory
* motorDeltaTau has a dedicated example IOC that can be built outside of motorDeltaTau

#### Modifications to existing features
* None

#### Bug fixes
* None

