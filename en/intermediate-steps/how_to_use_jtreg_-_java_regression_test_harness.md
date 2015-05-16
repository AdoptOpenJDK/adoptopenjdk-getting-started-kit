# How to use JTReg… - Java Regression Test Harness ?

 * [Preparation](preparations.md)
 * [Problems.txt](problems.txt.md)
 * [Examples of annotations in the header of test files](test-annotations.md)
---
##### What is JTReg ?

JTReg stands for Java Regression Test suite, also see http://openjdk.java.net/jtreg/.

##### How to use JTReg ?
Try out the below ```make``` commands to run tests on the individual components:
```
$ cd $HOME/sources/jdk8_tl/test
 
$ make jdk_core      &> openJDK_jdk_core_Test_Results.logs
$ make jdk_default   &> openJDK_jdk_default_Test_Results.logs 
$ make jdk_all       &> openJDK_jdk_all_Test_Results.logs
```

(the necessary environement variables need to be in place before the ```make test``` command work on the above components, for a bigger list see [link](https://java.net/projects/adoptopenjdk/pages/InstallJtreg#Running_tests_via_the_CLI).

* Prerequisites:<br/>
1) ```TEST.ROOT``` must exist in the folder where the below commands will be executed<br/>
2) jdk images must be present as a result of the ```make images``` or ```make clean images``` command<br/>

* Known issue: <br/>
“Cannot determine the version of java”, solution: ```unset JT_JAVA in .bashrc```

Method 1 to run ```jtreg``` from the CLI
```
$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:fail -jdk: <jdk8-path> $1
```

Method 2 to run ```jtreg``` from the CLI
```
$ $HOME/jtreg/linux/bin/jtreg -verbose:fail -jdk: <jdk8-path> $1
```

```jdk8-path``` - same as ```$PRODUCT_HOME```  (for eg. ```$SOURCE_CODE/jdk8/build/macosx-x64-normal-server-release/images/j2sdk-image```, this may differ on your system)

Replace the ```$1``` with a file or a folder name, below are few examples:

```
$ cd $SOURCE_CODE/jdk8_tl/jdk/test

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ ./ 

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ javax
(the above will run all the tests in the jdk/test/javax sub-folder)

$ $HOME/jtreg/linux/bin/jtreg -verbose:all -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ java/lang/invoke/AccessControlTest.java
```

(the above will run all the tests in the above mentioned test class)

The results can be found in the ```JTreport``` and ```JTwork``` folders.

<br/>
**/test/ folders in the $HOME/sources/jdk8 or $HOME/sources/jdk9 tree**

Run the below to find out the repos or packages that have a test folder in it hence supports ```jtreg``` tests, meaning you can go into these folders and run ```make test``` or the ```jtreg``` CLI or binary file commands to run the respective tests:

```
$ tree -fL 5 | grep "/test/" | more
```

Our search gave us the below:
```
./hotspot/test
./jdk/test
./langtools/test
./nashorn/test
./test/
```

Plenty to learn and know about OpenJDK hence we look at the tests to lear about the implementation code behind. them...