# OpenJDK9 - jimage

**Como criar uma imagem *jimage* nova**

*Command*
```
$ cd $SOURCES/jdk9/build/linux-x86_64-normal-server-release/images/jdk/bin
```

*Output*
```
$ ./jimage --help
Exemplo para uso: jimage <extract|recreate|info|list|verify> <options> jimage...
 
  extract  - Extrai todas as jimage em arquivos separados dentro do diretorio
             especificado por --dir=<directory> (default=.)
  recreate - Reconstroi a jimage desde um diretorio extraido (--dir)
  info     - Imprime informacao especificada no header da jimage.
  list     - Imprime os nomes de todos as entradas da jimage.  Quando usado com
             --verbose imprime todos os atributos ex. size e offset.
  verify   - Reporta erros em todas as entradas .class
 
"options" incluidas:
  --dir                                Especifica um diretorio target para realizar operacoes de create/expand
  --help                               Ajuda
  --verbose                            Listagem Verbose
  --version                            Informacoes de versao
 ```
<br/>
***modules* listar diretorios das *jdk image***

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

**Listar conteudos dos modulos *bootmodules.jimage* localizados dentro do diretorio *lib/modules* **

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