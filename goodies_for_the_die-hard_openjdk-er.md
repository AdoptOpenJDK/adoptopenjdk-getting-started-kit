# Goodies for the die-hard OpenJDK-er

Bash scripts that make make life easier
```updateAndCleanBuildOpenJDK.sh``` - run once in a while or if you want a clean build

```
./get_source.sh
bash configure
make clean images
```

```updateCleanBuildAndTestOpenJDK.sh``` - run once in a while or if you want a clean build & test

```
./get_source.sh
bash configure
make clean images
make test```


```updateAndBuildOpenJDK.sh``` - run regularly (incremental build)

```
./get_source.sh
bash configure
make images```


```updateBuildAndTestOpenJDK.sh``` - run often

```
./get_source.sh
bash configure
make images
make test```

```
_Simple example of changing the OpenJDK code-base and writing a client program to use the change_

buildAndRunTheChangedRandom.sh``` - run after changing the ChangeRandom.java file```

```
##### OpenJDK8
$SOURCES/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/bin/javac ChangeRandom.java
$SOURCES/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2re-image/bin/java ChangeRandom
```

```
##### OpenJDK9
build/linux-x86_64-normal-server-release/images/jdk/bin/javac -version
build/linux-x86_64-normal-server-release/images/jdk/bin/javac ChangeRandom.java
build/linux-x86_64-normal-server-release/images/jdk/bin/javap -verbose ChangeRandom | grep "major"
build/linux-x86_64-normal-server-release/images/jdk/bin/javap -verbose ChangeRandom | grep "minor"
build/linux-x86_64-normal-server-release/images/jre/bin/java -version
build/linux-x86_64-normal-server-release/images/jre/bin/java ChangeRandom```

```runJtregViaExecutable.sh``` - run JTREG via the $JTREG/bin/jtreg command

```
$HOME/jtreg/linux/bin/jtreg -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ $1
```

```runJtregViaTheJarFile.sh``` - run JTREG via the $JTREG/lib/jtreg.jar command

```
java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ $1```