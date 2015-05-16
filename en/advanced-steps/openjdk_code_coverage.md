# OpenJDK Code coverage

Here’s the Adopt OpenJDK’s jab at [code-coverage](https://java.net/projects/adoptopenjdk/pages/Codecoverage).

**Existing code coverage reports (OpenJDK8 and OpenJDK9**
Recently we have enabled code coverage on our Adopt OpenJDK build farms running a CI build of OpenJDK8 and OpenJDK9, publishing jcov reports for [OpenJDK8](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/openjdk-1.8-linux-x86_64/ws/testoutput/jdk_core/JTreport/jcov/index.html) and [OpenJDK9](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/openjdk-1.9-linux-x86_64/ws/testoutput/jdk_core/JTreport/jcov/index.html) respectively.

**Running tests with code-coverage enabled for OpenJDK9**

---
Notes: 
* similar steps can me performed for 'OpenJDK8' as well. 
* these settings are for generating coverage for the 'jdk' repo only
* we didn't have success in producing one for 'langtools'
---
* Ensure your have the lastest ```jdk``` images built in tge build folder of ```OpenJDK9``` (see [Build your own OpenJDK](../binaries/build_your_own_openjdk.md)).

* Install ```jtreg with the jcov```, see [How to use JTReg... > Preparations](../intermediate-steps/preparations.md).

* Apply these exports to your ```.bash_xxx``` profile:

```
export SOURCE_CODE=/home/<username>/workspace/jdk9/
export JTREG_INSTALL=/home/<username>/workspace/jtreg
export JT_HOME=$JTREG_INSTALL
export JTREG_HOME=$JTREG_INSTALL
export PRODUCT_HOME=$SOURCE_CODE/build/linux-x86_64-normal-server-release/images/jdk 
export JPRT_JTREG_HOME=${JT_HOME}
export JPRT_JAVA_HOME=${PRODUCT_HOME}
export JTREG_TIMEOUT_FACTOR=5
export CONCURRENCY=8
```
```
$ cd $SOURCES/jdk9/jdk/test
```

* Edit the ```Makefile``` and add the following, just before the line  ```# Make sure jtreg exists```:

```
jdkroot=<hardcoded path to your jdk9, see above>

JTREG_TEST_OPTIONS += -jcov/classes:$(jdkroot)/build/linux-x86_64-normal-server-release/jdk/modules/java.base
JTREG_TEST_OPTIONS += -jcov/source:$(jdkroot)/jdk/src/java.base/share/classes
JTREG_TEST_OPTIONS += -jcov/include:*
```

* Run tests in debug mode
```
$ cd ..
$ make test LOG=debug
```

* Opening the generated coverage report

Once finished, look for the report in the below location:

```
$ cd $SOURCES/jdk9/build/linux-x86_64-normal-server-release/testoutput/jdk_core/JTreport/jcov/
$ open index.html
```

This will normally take a couple of hours depending on the available resources and how performant your sysyem is.

Also see [Building jcov](building_jcov.md).