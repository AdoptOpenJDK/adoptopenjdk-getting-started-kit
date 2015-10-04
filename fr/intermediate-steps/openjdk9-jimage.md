# OpenJDK 9 - jimage

**La nouvelle commande *jimage* **

*Commande*
```
$ cd $SOURCES/jdk9/build/linux-x86_64-normal-server-release/images/jdk/bin
```

*Sortie*
```
$ ./jimage --help
Usage: jimage <extract|recreate|info|list|verify> <options> jimage...
 
  extract  - Extrait toutes les entrées jimage dans des fichiers séparés
             dans le répertoire spécifié par --dir=<directory> (défaut=.)
  recreate - Reconstruit un fichier jimage à partir d'un répertoire extrait (--dir)
  info     - Affiche les informations spécifiées dans l'entête du fichier jimage.
  list     - Affiche les noms de toutes les entrées dans le fichier jimage.  Utilisée avec 
             --verbose affichera également les attributs des entrées par ex. la taille et l'offset.
  verify   - Rapporte les erreurs sur les entrées .class qui ne seraient pas vérifiées comme des classes.
 
Les options possibles inclues :
  --dir                                Répertoire destination pour créer/extraire
  --help                               Affiche ce message
  --verbose                            Affichage détaillé
  --version                            Affichage des information de version
 ```
<br/>
**répertoire *modules* dans *jdk image***

*Commande*
```bash
$ cd $SOURCES/jdk9/build/linux-x86_64-normal-server-release/images/jdk
$ ls -lash lib/modules
```
*Sortie*
```text
4.0K drwxrwxr-x 2   4.0K Mar 21 01:49 .
4.0K drwxrwxr-x 5   4.0K Mar 21 01:49 ..
 22M -rw-rw-r-- 1    22M Mar 21 01:49 appmodules.jimage
 53M -rw-rw-r-- 1    53M Mar 21 01:49 bootmodules.jimage
 28M -rw-rw-r-- 1    28M Mar 21 01:49 extmodules.jimage
```
<br/>

**Extrait du fichier *bootmodules.jimage* dans le répertoire *lib/modules* **

*Commande*
```bash
$ ./bin/jimage list lib/modules/bootmodules.jimage | less
```
*Sortie*
```text
jimage: bootmodules.jimage
META-INF/services/java.nio.file.spi.FileSystemProvider
META-INF/services/javax.print.PrintServiceLookup
META-INF/services/javax.print.StreamPrintServiceFactory
META-INF/services/javax.sound.midi.spi.MidiDeviceProvider
META-INF/services/javax.sound.midi.spi.MidiFileReader
META-INF/services/javax.sound.midi.spi.MidiFileWriter
META-INF/services/javax.sound.midi.spi.SoundbankReader
META-INF/services/javax.sound.sampled.spi.AudioFileReader
META-INF/services/javax.sound.sampled.spi.AudioFileWriter
.
.
.
sun/util/resources/en/CurrencyNames_en_ZA.class
sun/util/resources/en/LocaleNames_en.class
sun/util/resources/en/LocaleNames_en_MT.class
sun/util/resources/en/LocaleNames_en_PH.class
sun/util/resources/en/LocaleNames_en_SG.class
sun/util/resources/en/TimeZoneNames_en.class
sun/util/resources/en/TimeZoneNames_en_CA.class
sun/util/resources/en/TimeZoneNames_en_GB.class
sun/util/resources/en/TimeZoneNames_en_IE.class
sun/util/spi/CalendarProvider.class
```