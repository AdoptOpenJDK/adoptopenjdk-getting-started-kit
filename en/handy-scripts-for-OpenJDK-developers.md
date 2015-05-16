# Handy scripts

**Handy scripts to update, build and run tests**

Bash scripts that make make life easier
```updateAndCleanBuildOpenJDK.sh``` - run once in a while or if you want a clean build

```bash
./get_source.sh
bash configure
make clean images
```

```updateCleanBuildAndTestOpenJDK.sh``` - run once in a while or if you want a clean build & test

```bash
./get_source.sh
bash configure
make clean images
make test```


```updateAndBuildOpenJDK.sh``` - run regularly (incremental build)

```bash
./get_source.sh
bash configure
make images```


```updateBuildAndTestOpenJDK.sh``` - run often

```bash
./get_source.sh
bash configure
make images
make test```

<br/>
__Simple example of changing the OpenJDK code-base and writing a client program to use the change__

```buildAndRunTheChangedRandom.sh``` - run after changing the ChangeRandom.java file

```bash
##### OpenJDK8
IMAGES_FOLDER=$SOURCES/jdk8/build/linux-x86_64-normal-server-release/images
$IMAGES_FOLDER/j2sdk-image/bin/javac -version
$IMAGES_FOLDER/j2sdk-image/bin/javac ChangeRandom.java
$IMAGES_FOLDER/jdk/bin/javap -verbose ChangeRandom | grep "major"
$IMAGES_FOLDER/jdk/bin/javap -verbose ChangeRandom | grep "minor"

$IMAGES_FOLDER/jre/bin/java -version
$IMAGES_FOLDER/j2re-image/bin/java ChangeRandom
```

```bash
##### OpenJDK9
IMAGES_FOLDER=$SOURCES/jdk9/build/linux-x86_64-normal-server-release/images

$IMAGES_FOLDER/jdk/bin/javac -version
$IMAGES_FOLDER/jdk/bin/javac ChangeRandom.java
$IMAGES_FOLDER/jdk/bin/javap -verbose ChangeRandom | grep "major"
$IMAGES_FOLDER/jdk/bin/javap -verbose ChangeRandom | grep "minor"

$IMAGES_FOLDER/jre/bin/java -version
$IMAGES_FOLDER/jre/bin/java ChangeRandom
```

<br/>
**Running JTREG**

```runJtregViaExecutable.sh``` - run JTREG via the $JTREG/bin/jtreg command

```
$HOME/jtreg/linux/bin/jtreg -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ $1
```

```runJtregViaTheJarFile.sh``` - run JTREG via the $JTREG/lib/jtreg.jar command

```
java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ $1```