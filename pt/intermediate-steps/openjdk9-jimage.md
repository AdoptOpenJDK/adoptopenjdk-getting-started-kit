# OpenJDK9 - jimage

**The new *jimage* command**

*Command*
```
$ cd $SOURCES/jdk9/build/linux-x86_64-normal-server-release/images/jdk/bin
```

*Output*
```
$ ./jimage --help
Usage: jimage <extract|recreate|info|list|verify> <options> jimage...
 
  extract  - Extract all jimage entries into separate files into the directory
             specified by --dir=<directory> (default=.)
  recreate - Reconstructs a jimage from an extracted directory (--dir)
  info     - Prints information specified in the jimage header.
  list     - Prints the names of all the entries in the jimage.  When used with
             --verbose will also print entry attributes ex. size and offset.
  verify   - Reports errors on any .class entries that dont verify as classes.
 
Possible options include:
  --dir                                Target directory for create/expand
  --help                               Print this usage message
  --verbose                            Verbose listing
  --version                            Version information
 ```
<br/>
***modules* folder in the *jdk image***

*Command*
```bash
$ cd $SOURCES/jdk9/build/linux-x86_64-normal-server-release/images/jdk
$ ls -lash lib/modules
```
*Output*
```text
4.0K drwxrwxr-x 2   4.0K Mar 21 01:49 .
4.0K drwxrwxr-x 5   4.0K Mar 21 01:49 ..
 22M -rw-rw-r-- 1    22M Mar 21 01:49 appmodules.jimage
 53M -rw-rw-r-- 1    53M Mar 21 01:49 bootmodules.jimage
 28M -rw-rw-r-- 1    28M Mar 21 01:49 extmodules.jimage
```
<br/>

**Visual extract of the *bootmodules.jimage* file in the *lib/modules* folder**

*Command*
```bash
$ ./bin/jimage list lib/modules/bootmodules.jimage | less
```
*Output*
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