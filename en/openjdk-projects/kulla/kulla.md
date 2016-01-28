# Project Kulla

**Official homepage** <br/>
Check out the official page on Kulla at 
http://openjdk.java.net/projects/kulla/

**JEP related to Kulla**<br/>
https://bugs.openjdk.java.net/browse/JDK-8043364

**Feedback**  
View or add your comments to the recent LJC hackday [feedback](https://docs.google.com/document/d/1b236MW-cliUrmSWyVkBBs460Inh5lLcLvRsOmGThzlg/edit?usp=sharing) by the attendees.

**Download binaries**  
JDK9 binaries: https://jdk9.java.net/download/<br/>
Kulla.jar: [Adopt OpenJDK Cloudbees Build farm](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/langtools-1.9-linux-x86_64-kulla-dev/lastSuccessfulBuild/artifact/)

**MacOS users**<br/>
If you do not want to make JDK9 as the primary Java on your MacOS, here's something to [try out](http://javapapo.blogspot.com/2013/02/multiple-java-jdks-on-your-macosx.html). 

What JDK am I using ?
```
// Tells you which JDKs you have
$ /usr/libexec/java_home -verbose
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
set JAVA_HOME to point to /path/JDK9/
```
```
$ java -jar ~/sources/kulla/kulla.jar
```

```
| Welcome to the Java REPL -- Version 0.411
| Type /help for help

->|
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
- http://www.infoq.com/news/2014/09/repl-for-java (Java REPL, IntelliJ IDEA Java REPL plugin, Beanshell, etc...)
- http://redcode7.rssing.com/browser.php?indx=11248373&last=1&item=7
- http://www.javaworld.com/article/2601433/java-language/programmers-could-get-repl-in-official-java.html
- https://teamtreehouse.com/forum/installing-java-repl
- [Java REPL](https://github.com/parrt/cs652/blob/master/projects/Java-REPL.md) in 300 lines of code

** Building the Kulla dev branch of OpenJDK9 **

```
hg clone http://hg.openjdk.java.net/kulla/dev kulla-dev
cd kulla-dev
sh get_sources.sh
bash configure --with-boot-jdk=/path/to/jdk1.8.0
make clean images
make install  <=== optional
```

Ensure that the path to the JDK built with the above steps is set to the ```JAVA_HOME``` and ```PATH``` environment variables.

Download ```JLINE2``` from [Maven](http://mvnrepository.com/artifact/jline/jline), and set the environment variable ```JLINE2LIB``` to point to the downloaded jar file.

To compile and run Kulla, see http://hg.openjdk.java.net/kulla/dev/langtools/file/4933dc482be7/repl/README or download this [Maven pom.xml](kulla-pom-xml.md) and place it in the ```$HOME/sources/kulla-dev/langtools/repl/``` folder.

Other good guides to building Kulla from scratch, see this [JClarity's post](http://www.jclarity.com/2015/04/15/java-9-repl-getting-started-guide/) and [Arun Gupta's post](http://blog.arungupta.me/jdk9-repl-getting-started/). And a nice and short [blog post](https://znurgl.wordpress.com/2015/05/17/jshell-upcoming-java-repl-packed-into-jdk9/) from Greg Bakos.

**Gotachas**  

*Clear the terminal window*  
 MacOS: CMD-K <br/>
 Linux: Ctrl-K or Ctrl-L