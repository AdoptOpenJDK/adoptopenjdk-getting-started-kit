# How to use JTReg… - Java Regression Test Harness ?

 * [Problems.txt](advanced-steps/problems.txt)
 * [Examples of annotations in the header of test files](advanced-steps/test-annotations.md)

Follow the instructions on https://java.net/projects/adoptopenjdk/pages/InstallJtreg and https://java.net/projects/adoptopenjdk/pages/EclipseProjectForJTReg to learn more about the OpenJDK JTReg. For more details steps to build JTReg have a look at [the link](http://openjdk.java.net/jtreg/build.html).

Download latest JTReg artifact from the [Adopt OpenJDK Cloudbees Jenkin server]( https://adopt-openjdk.ci.cloudbees.com/job/jtreg/lastSuccessfulBuild/artifact/).

After doing the above make a copy of the win32, linux and lib sub-folders from within the dist/jtreg sub-folder into the jtreg folder - to prevent errors when running tests. In some editions, the files in the win32 folder must be made executable (```chmod u+x …```)

~~Download jcommander as TestNG needs it and is missing from some jtreg distributions:~~

~~$ cd $HOME/jtreg/lib/~~
~~$ wget http://repo1.maven.org/maven2/com/beust/jcommander/1.7/jcommander-1.7.jar~~

Interesting [blog](http://arkangelofkaos.blogspot.co.uk/2013/05/openjdk-test-fest-23rd-march-2013.html) on what to keep in mind before writing tests.

To see an online help for JTReg perform the below command:
```
$ jtreg -onlineHelp
```

Have a look at these JTReg tutorial [videos](http://bit.ly/1bT4g7f).<br/>
[Quick Start Guide](http://bit.ly/1fWCqPH) tutorial on jtreg.<br/>

```
$ cd $HOME/sources/jdk8_tl/test
 
$ make jdk_core      &> openJDK_jdk_core_Test_Results.logs
$ make jdk_default   &> openJDK_jdk_default_Test_Results.logs 
$ make jdk_all       &> openJDK_jdk_all_Test_Results.logs
```

(the necessary environement variables need to be in place before the ```make test``` command work on the above components, for a bigger list see [link](https://java.net/projects/adoptopenjdk/pages/InstallJtreg#Running_tests_via_the_CLI).

Two ways to run jtreg from the CLI

Prerequisites:<br/>
1) ```TEST.ROOT``` must exist in the folder where the below commands will be executed<br/>
2) jdk images must be present as a result of the ```make images``` or ```make clean images``` command<br/>

Known issue: <br/>
“Cannot determine the version of java”, solution: ```unset JT_JAVA in .bashrc```

```
$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:fail -jdk: <jdk8-path> $1

$ $HOME/jtreg/linux/bin/jtreg -verbose:fail -jdk: <jdk8-path> $1
```

```jdk8-path``` - same as ```$PRODUCT_HOME```  (for eg. ```$SOURCE_CODE/jdk9/build/macosx-x64-normal-server-release/images/j2sdk-image```, this may differ on your system)

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

The new versions of JTReg can now be used without having to pass ```-cpa:$HOME/jtreg/lib/jcommander-1.7.jar``` as command line argument.

```/test/``` folders in the ```$HOME/sources/jdk8_tl tree``` 

Run the below to find out the repos or packages that have a test folder in it hence supports jtreg tests, meaning you can go into these folders and run ```make test``` or the ```jtreg``` CLI or binary file commands to run the respective tests:

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

Plenty to learn and know about OpenJDK hence we look at the tests to learn about the implementation code behind. them..,