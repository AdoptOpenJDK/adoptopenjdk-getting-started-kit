# Build OpenJDK 8

Link to a detailed page on the Build step on the Adopt OpenJDK wiki: https://java.net/projects/adoptopenjdk/pages/Build

Backup the build folder to revert to original build artefacts

```
$ cd $HOME/sources/jdk8_tl```


or

```
$ cd $HOME/sources/jdk8```


or 

```
$ cd $HOME/dev/jdk8```


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
