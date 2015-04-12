# Kulla

**Official homepage**

Check out the official page on Kulla at 
http://openjdk.java.net/projects/kulla/

**Feedback**  
View or add your comments to the recent LJC hackday [feedback](https://docs.google.com/document/d/1b236MW-cliUrmSWyVkBBs460Inh5lLcLvRsOmGThzlg/edit?usp=sharing) by the attendees.

**Download binaries**  

JDK9: https://jdk9.java.net/download/

Kulla.jar: https://java.net/projects/adoptopenjdk/downloads/download/kulla.jar


**MacOS users**
If you do not want to make JDK9 as the primary Java on your MacOS, here's something to try out http://javapapo.blogspot.com/2013/02/multiple-java-jdks-on-your-macosx.html

What JDK am I using ?
```
// Tells you which JDKs you have
/usr/libexec/java_home -verbose
```

Can I set JDK8 or JDK9 to be my default JAVA_HOME each time I log into my terminal ?

```
// You can set that export command in your ~/.profile
// and/or ~/.bashrc to permanently set JAVA_HOME
// for all shells/terminals/applications.
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"

// Set JAVA_HOME to be Java 9 for the terminal
// window you are in
export JAVA_HOME="`/usr/libexec/java_home -v '1.9*'`"
```

**Getting started**

*Slides*

*Exercises*
https://java.net/projects/adoptopenjdk/downloads/download/REPL_Tutorial.pdf

*Other mentions of REPL*  
http://www.infoq.com/news/2014/09/repl-for-java


**Gotachas**  

*Clear the terminal window*  
 MacOS: CMD-K
 Linux: Ctrl-K or Ctrl-L