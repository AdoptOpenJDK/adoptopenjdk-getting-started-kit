# Build OpenJDK 9

**Build on native OS (from scratch)**

Link to a detailed page on the Build step on the [Adopt OpenJDK wiki](https://java.net/projects/adoptopenjdk/pages/Build).

*Prerequisite:* supporting programs to build OpenJDK8 have been installed before attempting to perform the below instructions, [see site](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKBuild). Follow the below instructions to build OpenJDK9 from the jdk9 forest:

**Build from existing repo or Ready-made VM image**

```
$ cd $HOME/sources
```
or
```
$ cd $HOME/dev
```

If ```jdk9``` or ```jdk9_dev``` does not exist in this folder, then do the below:

build JDK9 (non-Jigsaw)
```
$ hg clone http://hg.openjdk.java.net/jdk9/jdk9 jdk9
```

or 

build Jigsaw JDK

```
$ hg clone http://hg.openjdk.java.net/jigsaw/jake/ jdk9

$ cd jdk9

$ chmod u+x get_source.sh 
$ ./get_source.sh 
```

```
$ bash configure --with-boot-jdk=/usr/lib/jvm/jdk1.8.0 --disable-warnings-as-errors
```

`/usr/lib/jvm/jdk1.8.0` - can differ in your case, please download JDK 8 at least from the [site](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html). **It is recommended to use this JDK as it is better tested and free from any changes you might have made to the local copy of the OpenJDK8 sources & images.**

If you are building on MacOSX (e.g. 10.9.0 or above), you might need to install XQuartz from this [site](http://xquartz.macosforge.org/landing) and include the following options to run configure 

```
$ bash configure --with-freetype-include=/usr/X11/include/freetype2 \
                --with-freetype-lib=/usr/X11/lib \
                --disable-warnings-as-errors \             
                --with-boot-jdk=/usr/lib/jvm/jdk1.8.0
```

It is possible to get Oracle JDK 1.8 on Ubuntu by adding the repository of the Web Update 8 project, [see instructions](http://tecadmin.net/install-oracle-java-8-jdk-8-ubuntu-via-ppa/).

If you downloaded the virtual machine image then use this path:

```
$ bash configure --with-boot-jdk=/usr/lib/jvm/java-8-oracle --disable-warnings-as-errors
```

```
$ make clean images 
```

or 

```
$ make clean images LOG=debug     
                 ## to display DEBUG information 
```

Check out the [Nashorn forest](http://hg.openjdk.java.net/jdk9/jdk9/nashorn) for JDK9.

To build OpenJDK with build warnings enabled, see section [Cleaning up build warnings](../intermediate-steps/cleaning_up_build_warnings.md).
