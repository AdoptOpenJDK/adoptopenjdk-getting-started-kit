# Building jcov

Project page (project info, build instructions, etc…) <br/>
https://wiki.openjdk.java.net/display/CodeTools/jcov

Source code: <br/>
http://hg.openjdk.java.net/code-tools/jcov

Download artifact from the [Adopt OpenJDK CI site](https://adopt-openjdk.ci.cloudbees.com/job/jcov/lastSuccessfulBuild/artifact/).

Quick build instructions

```
$ hg clone http://hg.openjdk.java.net/code-tools/jcov
$ cd jcov/build
$ ant clean
$ ant -v -f build.xml -Dasmjar5=/path/to/asm-all-5.0.1.jar -Djavatestjar=/path/to/javatest.jar 
```

```asm``` can be downloaded from http://download.forge.ow2.org/asm/asm-5.0.1-bin.zip

```jtharness``` can be downloaded from  https://adopt-openjdk.ci.cloudbees.com/job/jtharness/lastSuccessfulBuild/artifact/

Please refer to the project page for build instructions, etc… when they become available, once they do, the above instructions will be removed to avoid duplications.

See also [OpenJDK Code Coverage](openjdk_code_coverage.md).