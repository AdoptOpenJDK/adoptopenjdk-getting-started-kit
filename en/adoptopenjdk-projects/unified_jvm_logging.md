# Unified JVM logging

Recently a new logging framework was pushed to HotSpot via **JEP 158**:

http://openjdk.java.net/jeps/158

GC logging for the JVM is being changed to make use of the above new logging framework, done via **JEP 271**:

http://openjdk.java.net/jeps/271

This will change a lot what the log output from the JVM looks like. The Hotspot team are working on it and are looking to gather as much feedback as they can for the new format. 

There is some more information about the changes in the email discussion following the publication of the JEP:

http://mail.openjdk.java.net/pipermail/hotspot-gc-dev/2015-September/014773.html
