# Build OpenJDK 8

Link to a detailed page on the Build step on the Adopt OpenJDK wiki: https://java.net/projects/adoptopenjdk/pages/Build

*Cloning the OpenJDK repo (one-time)*

In case you don’t have an OpenJDK8 on your VM (jdk8 or jdk8_tl folder) in the following folders:

```
$ cd $HOME/sources/jdk8_tl```


or

```
$ cd $HOME/sources/jdk8```


or 

```
$ cd $HOME/dev/jdk8```

then do the following from within this folder:

```
$ hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8
$ cd jdk8
```

Download source by running get_source.sh (important)
(to avoid to have to download sources during the presentation please setup and download before hand)

```
$ chmod u+x get_source.sh
```

Configure openjdk setup (Optional if you haven’t run it)

```
$ bash configure```


Clean build with Images

```
$ make clean images```


or

```
$ make clean images LOG=debug     // to display DEBUG information 
```

Build individual components

```
$ make jdk
$ make hotspot
$ make test```
