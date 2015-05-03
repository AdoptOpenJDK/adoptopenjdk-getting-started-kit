# Exemplos de anotações no header de arquivos de teste

Rode os comandos abaixo em cada um dos repositoros para filtar diversos exemplos, olhe o maximo possivel, estude e examine a sintaxe, veja como varias funcionalidades são implementadas.

Modivique-os e escreva novos para entender como eles funcionam, rode os testes e teste o que você fez funciona.

```
$ cd $SOURCE_CODE

$ cd jdk8_tl

$ find . -name "TEST.properties"
./langtools/test/lib/combo/TEST.properties
./langtools/test/tools/javac/lambda/bridge/template_tests/TEST.properties
./langtools/test/tools/javac/lambdaShapes/TEST.properties
./jdk/test/java/time/TEST.properties
./jdk/test/java/util/stream/bootlib/TEST.properties
./jdk/test/java/util/stream/boottest/TEST.properties
./jdk/test/java/util/stream/test/TEST.properties
./jdk/test/jdk/lambda/TEST.properties

$ grep -rH "testng" .

$ cd hotspot/test
$ grep -rH "@library" .
$ grep -rH "@build" .
$ grep -rH "@bug" .
$ grep -rH "@key" .
$ grep -rH "@clean" .
$ grep -rH "@compile" .
$ grep -rH "@ignore" .
$ grep -rH "@run applet/manual" .
$ grep -rH "@run main/manual" .
$ grep -rH "@run shell/manual" .
$ grep -rH "@run main/fail" .
$ grep -rH "/-vmoptions" .
$ grep -rH "/-testjdk" .
$ grep -rH "/-compilejdk" .
$ grep -rH "/-javaoption" .
$ grep -rH "/-javaoptions" .
$ grep -rH "/-conc:" .
$ grep -rH "/-concurrency:" .
$ grep -rH "timeout:" .
$ grep -rH "timeoutFactor:" .
$ grep -rH "othervm" .
$ grep -rH "samevm" .
$ grep -rH "agentvm" .
$ grep -rH "exclude:" .
$ grep -rH "/-k:" .
$ grep -rH "/-a" .
$ grep -rH "/-automatic" .
$ grep -rH "/-m" .
$ grep -rH "/-manual" .
$ grep -rH "/-r:" .
$ grep -rH "/-reportDir:" .
$ grep -rH "/-w:" .
$ grep -rH "/-workDir:" .
$ grep -rH "/-xml" .

$ cd ../jdk/test
<same as above>

$ cd ../langtools/test
<same as above>

$ cd ../nashorn/test
<same as above>
```