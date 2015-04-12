# Kulla

**Official homepage** <br/>
Check out the official page on Kulla at 
http://openjdk.java.net/projects/kulla/

**JEP related to Kulla**<br/>
https://bugs.openjdk.java.net/browse/JDK-8043364

**Feedback**  
View or add your comments to the recent LJC hackday [feedback](https://docs.google.com/document/d/1b236MW-cliUrmSWyVkBBs460Inh5lLcLvRsOmGThzlg/edit?usp=sharing) by the attendees.

**Download binaries**  
JDK9: https://jdk9.java.net/download/<br/>
Kulla.jar: https://java.net/projects/adoptopenjdk/downloads/download/kulla.jar


**MacOS users**<br/>
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

**Linux/MacOS users**<br/>
How can I switch between different versions of the JDK if I have multiple of them ?

Add the below to your .bashrc or .bash_profile:

```
export JAVA9_HOME=/path/to/jdk1.9.0
export JAVA8_HOME=/path/to/jdk1.8.0
export JAVA7_HOME=/path/to/jdk1.7.0
export JAVA6_HOME=/path/to/jdk1.6.0
export JAVA_HOME=$JAVA7_HOME
export JDK_HOME=$JAVA7_HOME
export IDEA_JDK=$JAVA7_HOME
 
function go9 {
    export JAVA_HOME=$JAVA9_HOME
    export JDK_HOME=$JAVA_HOME
    echo "Switched to $JAVA_HOME"
    export PATH="$JAVA_HOME/bin:$PATH"
}

function go8 {
    export JAVA_HOME=$JAVA8_HOME
    export JDK_HOME=$JAVA_HOME
    echo "Switched to $JAVA_HOME"
    export PATH="$JAVA_HOME/bin:$PATH"
}
 
function go7 {
    export JAVA_HOME=$JAVA7_HOME
    export JDK_HOME=$JAVA_HOME
    echo "Switched to $JAVA_HOME"
    export PATH="$JAVA_HOME/bin:$PATH"
}
 
function go6 {
    export JAVA_HOME=$JAVA6_HOME
    export JDK_HOME=$JAVA_HOME
    echo "Switched to $JAVA_HOME"
    export PATH="$JAVA_HOME/bin:$PATH"
}
```

**Getting started**

*Running kulla.jar*

```
set JAVA_HOME to point to /path/JDK9/bin/
```
```
$ java -jar ~/sources/kulla/kulla.jar
```

```
| Welcome to the Java REPL -- Version 0.411
| Type /help for help

->
```

*/help options*

```
-> /help
Type a Java language expression, statement, or declaration.
Or type one of the following commands:

{
. 
.
. 
  [Options]
. 
.
. 
}

Supported shortcuts include:
<tab> -- show possible completions for the current text
Shift-<tab> -- for current method or constructor invocation, show a synopsis of the method/constructor
```

*Slides*
[soon to be published]

*Exercises*<br/>
- https://java.net/projects/adoptopenjdk/downloads/download/REPL_Tutorial.pdf

*Other mentions of REPL*  
- http://www.infoq.com/news/2014/09/repl-for-java
- http://redcode7.rssing.com/browser.php?indx=11248373&last=1&item=7

** Building the Kulla dev branch of OpenJDK9 **

```
hg clone http://hg.openjdk.java.net/kulla/dev kulla-dev
cd kulla-dev
sh get_sources.sh
bash configure
make clean images
make install  <=== optional
```

**Gotachas**  

*Clear the terminal window*  
 MacOS: CMD-K <br/>
 Linux: Ctrl-K or Ctrl-L