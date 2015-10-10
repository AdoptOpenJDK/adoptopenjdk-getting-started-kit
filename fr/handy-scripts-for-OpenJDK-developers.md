# Scripts utiles

**Scripts utiles pour mettre � jour, construire et tester**

Scripts Bash pour faciliter la vie
```updateAndCleanBuildOpenJDK.sh``` - � utiliser la premi�re fois ou pour faire une build propre

```bash
./get_source.sh
bash configure
make clean images
```

```updateCleanBuildAndTestOpenJDK.sh``` - � utiliser de temps en temps ou pour faire une build propre et tester

```bash
./get_source.sh
bash configure
make clean images
make test```


```updateAndBuildOpenJDK.sh``` - utilisation r�guli�re (build incrementi�le)

```bash
./get_source.sh
bash configure
make images```


```updateBuildAndTestOpenJDK.sh``` - utilisation fr�quente

```bash
./get_source.sh
bash configure
make images
make test```

<br/>
__Exemple simple de changement du code d'OpenJDK et d'�criture d'un programme client pour ce changement__

```buildAndRunTheChangedRandom.sh``` - � utiliser apr�s avoir chang� le fichier ChangeRandom.java

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
**Lancement de JTREG**

```runJtregViaExecutable.sh``` - lance JTREG via la commande $JTREG/bin/jtreg

```
$HOME/jtreg/linux/bin/jtreg -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ $1
```

```runJtregViaTheJarFile.sh``` - lance JTREG via la commande $JTREG/lib/jtreg.jar

```
java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ $1```