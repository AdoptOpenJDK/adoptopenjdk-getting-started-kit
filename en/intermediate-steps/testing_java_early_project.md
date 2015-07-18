# Testing Java Early project

To bring the testing process to the community and also testing early for early feedback, the Testing Java projects has been started and supported by the [@LJCJug](http://twitter.com/ljcjug) and OpenJDK (i.e. Oracle), to see a handful of Java libraries that have been enlisted, read the details on [this wiki page](https://java.net/projects/adoptopenjdk/pages/TestingJava8) also look at the <b>[JDK9 Outreach](https://wiki.openjdk.java.net/display/Adoption/JDK+9+Outreach)</b> and [Quality Outreach](https://wiki.openjdk.java.net/display/quality/Quality+Outreach) programs.

But this does not need to stop here, you can select your own java library or opensource project, build it using JDK9 and then run it via JDK9 or JRE9.

* Ensure you set your PATH and/or JAVA_HOME to point to the JDK image you built using OpenJDK9 (see build folder ```build/linux-x86_64-normal-server-release/images/jdk``` for a Linux build).
* Record all responses at each of these steps from compile, build, test runs to running the application in the JDK9 environment
* Inform the owners of such libraries or projects using their mailing list or on their project page (github or bitbucket). 
* Also copy the [Adoption Discuss mailing list](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss) in such emails. 
* In case of an issue contact the owners of the project, [Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss) and the relevant [OpenJDK](http://mail.openjdk.java.net/mailman/listinfo) mailing list.

Here is a sample scratchpad of notes of [JBoss Forge built using the JDK image created from OpenJDK9](https://gist.github.com/neomatrix369/9fa4147ee8999cfd3a4e), consequently you can setup a local or remote Jenkins image which builds and runs projects using this image.