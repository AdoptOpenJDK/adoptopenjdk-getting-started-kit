# Building sigtest

Project page (project info, build instructions, etc…)
https://wiki.openjdk.java.net/display/CodeTools/sigtest

Source code: <br/>
http://hg.openjdk.java.net/code-tools/sigtest

Quick build instructions <br/>
```
$ svn checkout https://svn.java.net/svn/sigtest~svn/trunk

$ cd code/build

$ ant build -Djdk5.home=/path/to/jdk1.5.latest \
-Djdk8.home=/path/to/jdk8.latest \
-Dmvn2.exe=/path/to/latest/bin/mvn
```
Please refer to the project page for build instructions, etc… when they become available, once they do, the above instructions will be removed to avoid duplications.