# Examples of annotations in the header of test files

Run the following commands in each of the repos to filter out various examples, look into as many as possible, study and examine the syntax, see how the various functionalities are implemented. 

Modify them and write new ones to see how they can be used, re-run the tests to see if you got them right:

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