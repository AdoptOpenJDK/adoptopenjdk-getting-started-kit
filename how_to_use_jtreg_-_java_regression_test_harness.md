# How to use JTReg… - Java Regression Test Harness ?

Follow the instructions on https://java.net/projects/adoptopenjdk/pages/InstallJtreg and https://java.net/projects/adoptopenjdk/pages/EclipseProjectForJTReg to learn more about the OpenJDK JTReg. For more details steps to build JTReg have a look at http://openjdk.java.net/jtreg/build.html.

Download latest JTReg artifact from the Adopt OpenJDK Cloudbees Jenkin server: https://adopt-openjdk.ci.cloudbees.com/job/jtreg/lastSuccessfulBuild/artifact/

After doing the above make a copy of the win32, linux and lib sub-folders from within the dist/jtreg sub-folder into the jtreg folder - to prevent errors when running tests. In some editions, the files in the win32 folder must be made executable (```chmod u+x …```)

~~Download jcommander as TestNG needs it and is missing from some jtreg distributions:~~

~~$ cd $HOME/jtreg/lib/~~
~~$ wget http://repo1.maven.org/maven2/com/beust/jcommander/1.7/jcommander-1.7.jar~~

Interesting blog on what to keep in mind before writing tests:
http://arkangelofkaos.blogspot.co.uk/2013/05/openjdk-test-fest-23rd-march-2013.html

To see an online help for JTReg perform the below command:
```
$ jtreg -onlineHelp
```

JTReg tutorial videos: http://bit.ly/1bT4g7f
Quick Start Guide tutorial on jtreg: http://bit.ly/1fWCqPH

```
$ cd $HOME/sources/jdk8_tl/test
 
$ make jdk_core      &> openJDK_jdk_core_Test_Results.logs
$ make jdk_default   &> openJDK_jdk_default_Test_Results.logs 
$ make jdk_all       &> openJDK_jdk_all_Test_Results.logs
```

(the necessary environement variables need to be in place before the ‘make test’ command work on the above components, for a bigger list see https://java.net/projects/adoptopenjdk/pages/InstallJtreg#Running_tests_via_the_CLI).

Two ways to run jtreg from the CLI

Prerequisites: 
1) TEST.ROOT must exist in the folder where the below commands will be executed
2) jdk images must be present as a result of the ‘make images’ or ‘make clean images’ command

Known issue: 
“Cannot determine the version of java”, solution: unset JT_JAVA in .bashrc

```
$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:fail -cpa:<jcommander-path> -jdk: <jdk8-path> $1

$ $HOME/jtreg/linux/bin/jtreg -verbose:fail -cpa:<jcommander-path> -jdk: <jdk8-path> $1
```

```jdk8-path``` - same as ```$PRODUCT_HOME```  (for eg. $SOURCE_CODE/jdk9/build/macosx-x64-normal-server-release/images/j2sdk-image, this may differ on your system)

Replace the $1 with a file or a folder name, below are few examples:

```
$ cd $SOURCE_CODE/jdk8_tl/jdk/test

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all -cpa:$HOME/jtreg/lib/jcommander-1.7.jar -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ ./ 

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all -cpa:$HOME/jtreg/lib/jcommander-1.7.jar -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ javax
(the above will run all the tests in the jdk/test/javax sub-folder)

$ $HOME/jtreg/linux/bin/jtreg -verbose:all -cpa:$HOME/jtreg/lib/jcommander-1.7.jar -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ java/lang/invoke/AccessControlTest.java
```
(the above will run all the tests in the above mentioned test class)

The results can be found in the JTreport and JTwork folders.

The new versions of JTReg can now be used without having to pass the below command-line argument: 
-cpa:$HOME/jtreg/lib/jcommander-1.7.jar 

/test/ folders in the $HOME/sources/jdk8_tl tree

Run the below to find out the repos or packages that have a test folder in it hence supports jtreg tests, meaning you can go into these folders and run make test or the jtreg CLI or binary file commands to run the respective tests:

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

__ProblemList.txt__
jtreg now provides direct support for the ProblemList.txt file used to identify problematic tests in the jdk/test/ regression test suite. Previously, it was processed by test/Makefile into an exclude list; now, the file can be given directly to the -exclude option.

Its also a file to look into when looking for things to do in the areas of ‘testing’ and ‘jtreg’, try the below to see what you get on your version of OpenJDK:

```
$ cd $HOME/sources/jdk8_tl
$ tree -f | grep ProblemList.txt
│   │   ├── ./jdk/test/ProblemList.txt   ⇐ what we get
```

or 

```
$ find . -name “ProblemList.txt”
./jdk/test/ProblemList.txt   ⇐ what we get
```

Have a look at the contents of this file to see how tests that need to be excluded are defined. As of now this file is only available in the jdk/test folder.


JTReg - examples of annotations in the header of test files
Run the following commands in each of the repos to filter out various examples, look into as many as possible, study and examine the syntax, see how the various functionalities are implemented. 
Modify them and write new ones to see how they can be used, re-run the tests to see if you got them right:
```
$ cd $SOURCE_CODE

$ cd jdk8_tl

$ find . -name "TEST.properties"
./langtools/test/lib/combo/TEST.properties
./langtools/test/tools/javac/lambda/bridge/template_tests/TEST.properties
./langtools/test/tools/javac/lambdaShapes/TEST.properties
./jdk/test/java/time/TEST.properties
./jdk/test/java/util/stream/bootlib/TEST.properties
./jdk/test/java/util/stream/boottest/TEST.properties
./jdk/test/java/util/stream/test/TEST.properties
./jdk/test/jdk/lambda/TEST.properties

$ grep -rH "testng" .

$ cd hotspot/test
$ grep -rH "@library" .
$ grep -rH "@build" .
$ grep -rH "@bug" .
$ grep -rH "@key" .
$ grep -rH "@clean" .
$ grep -rH "@compile" .
$ grep -rH "@ignore" .
$ grep -rH "@run applet/manual" .
$ grep -rH "@run main/manual" .
$ grep -rH "@run shell/manual" .
$ grep -rH "@run main/fail" .
$ grep -rH "/-vmoptions" .
$ grep -rH "/-testjdk" .
$ grep -rH "/-compilejdk" .
$ grep -rH "/-javaoption" .
$ grep -rH "/-javaoptions" .
$ grep -rH "/-conc:" .
$ grep -rH "/-concurrency:" .
$ grep -rH "timeout:" .
$ grep -rH "timeoutFactor:" .
$ grep -rH "othervm" .
$ grep -rH "samevm" .
$ grep -rH "agentvm" .
$ grep -rH "exclude:" .
$ grep -rH "/-k:" .
$ grep -rH "/-a" .
$ grep -rH "/-automatic" .
$ grep -rH "/-m" .
$ grep -rH "/-manual" .
$ grep -rH "/-r:" .
$ grep -rH "/-reportDir:" .
$ grep -rH "/-w:" .
$ grep -rH "/-workDir:" .
$ grep -rH "/-xml" .

$ cd ../jdk/test
<same as above>

$ cd ../langtools/test
<same as above>

$ cd ../nashorn/test
<same as above>
```

Plenty to learn and know about OpenJDK hence we look at the tests to learn about the implementation code behind them.