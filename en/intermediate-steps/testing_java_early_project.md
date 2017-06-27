# Testing Java Early project

To bring the testing process to the community and also testing early for early feedback, the Testing Java projects has been started and supported by the [@LJCJug](http://twitter.com/ljcjug) and OpenJDK (i.e. Oracle), to see a handful of Java libraries that have been enlisted, read the details on [this wiki page](https://web.archive.org/web/20160417183545/https://java.net/projects/adoptopenjdk/pages/TestingJava8) also look at the **[JDK9 Outreach](https://wiki.openjdk.java.net/display/Adoption/JDK+9+Outreach)** and **[Quality Outreach](https://wiki.openjdk.java.net/display/quality/Quality+Outreach)** programs.

**Adopt OpenJDK runs its own efforts to encourage and support the above efforts, see https://web.archive.org/web/20160417183545/https://java.net/projects/adoptopenjdk/pages/TestingJava8.**

But this does not need to stop here, you can select your own java library or opensource project, build it using JDK9 and then run it via JDK9 or JRE9.

* Ensure you set your PATH and/or JAVA_HOME to point to the JDK image you built using OpenJDK9 (see build folder ```build/linux-x86_64-normal-server-release/images/jdk``` for a Linux build).
* JDK 9 Early Access binary - download the Early Access binaries of Java 9 from http://jdk.java.net/9/ (ensure you set your PATH and/or JAVA_HOME to point to the location of the downloaded JDK).
* JDK 9 Jigsaw Early Access binary - download the Early Access binaries of Java 9 from http://jdk.java.net/jigsaw/ (ensure you set your PATH and/or JAVA_HOME to point to the location of the downloaded JDK).
* Record all responses at each of these steps from compile, build, test runs to running the application in the JDK9 environment
* Inform the owners of such libraries or projects using their mailing list or on their project page (github or bitbucket). 
* Also copy the [Adoption Discuss mailing list](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss)+ in such emails. 
* In case of an issue contact the owners of the project, [Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss)+ and the relevant [OpenJDK](http://mail.openjdk.java.net/mailman/listinfo)+ mailing list. In this case the mailing list for jdk9 or jigsaw depending on the source of the issue.

 \+ You need to subscribe to the respective mailing lists before emailing to them.

Note: these are just a handful of the libaries and frameworks we have enlisted - there are but a lot more projects out in the wild, waiting to be tested.

Here is a sample scratchpad of notes of [JBoss Forge built using the JDK image created from OpenJDK9](https://gist.github.com/neomatrix369/9fa4147ee8999cfd3a4e), consequently you can setup a local or remote Jenkins image which builds and runs projects using this image.

**We also have a [Google doc for feedback](https://docs.google.com/document/d/1KlumN74IGt-TU-Md3Fn5h4sXHa75RApWNLszUTVp-DE/edit), please record your experiences with the appropriate details (as much as you can provide) to help with reproducing and diagnosing the problem in hand.**

JDK 9 Project Jigsaw github repo - [https://github.com/AdoptOpenJDK/jdk9-jigsaw](https://github.com/AdoptOpenJDK/jdk9-jigsaw).

Another contribution from Joe Kutner (@codefinger), JVM Platform Owner at Heroku, see [Testing JDK 9 EA with Heroku](http://jkutner.github.io/2015/07/16/test-jdk9-heroku.html) - can be used to deploy your applications on Heroku to gather G1GC logs.