# Cleaning up build warnings  (-Xlint)

```
 # To build with all warnings enabled, do the following:
 # make JAVAC_WARNINGS="-Xlint:all -Xmaxwarns 10000"
-JAVAC_WARNINGS := -Xlint:-unchecked,-deprecation,auxiliaryclass,cast,classfile,dep-ann,divzero,empty,fallthrough,finally,overloads,overrides,serial,static,try,varargs -Werror
+JAVAC_WARNINGS := -Xlint:all,-deprecation,-rawtypes,-unchecked -Werror
 
 # Any java code executed during a JDK build to build other parts of the JDK must be 
 # executed by the bootstrap JDK (probably with -Xbootclasspath/p: ) and for this
```
**C++ build warnings**
```$ make clean JAVAC_WARNINGS="-Xlint:all -Xmaxwarns 10000" LOG=info images```

**Java and C++ build warnings**
```$ make clean JAVAC_WARNINGS="-Xlint:all -Xmaxwarns 10000" DISABLE_WARNINGS="-Xlint:all" LOG=info images```

Then look in the build.log file in build/linux-x86_64-normal-server-release/ which contains the warnings. Open it with an editor that supports searching with regular expressions. You can find all the warnings per repository by searching regular expressions like these (supposing your OpenJDK sources are located in jdk9 directory):

```
jdk9/corba(.)* warning
jdk9/jaxp(.)* warning
jdk9/jaxws(.)* warning
jdk9/nashorn(.)* warning
```
Refer to https://bugs.openjdk.java.net/browse/JDK-8048839 

**JavaLintSummary (Javac build warnings)**<br/>
Check out http://openjdk.java.net/projects/code-tools/friday-stats/javacLintSummary.html and https://blogs.oracle.com/darcy/entry/warnings_removal_advice

Code base can be found at http://hg.openjdk.java.net/code-tools/friday-stats/

```
$ sudo apt-get install ant
$ ant -Djdk=<path to jdk8>

$ java -cp [path-friday-stats]/dist/lib/javacLintSummary.jar:$JAVA8_HOME/lib/tools.jar \
javacLintSummary.Main -Xlint:all \ 
-html report -Xdoclint \
jdk/src/**/*.java

$ java -cp [path-friday-stats]/dist/lib/javacLintSummary.jar:$JAVA8_HOME/lib/tools.jar \ javacLintSummary.Main -Xlint:all -html report -Xdoclint \
com.sun 
```