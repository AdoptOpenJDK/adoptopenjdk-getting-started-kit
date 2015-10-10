# Kulla

**Homepage officielle** <br/>
http://openjdk.java.net/projects/kulla/

**JEP pour Kulla**<br/>
https://bugs.openjdk.java.net/browse/JDK-8043364

**Retours**  
Regardez ou ajoutez vos commantaires aux [retours](https://docs.google.com/document/d/1b236MW-cliUrmSWyVkBBs460Inh5lLcLvRsOmGThzlg/edit?usp=sharing) par ses participant d'un récent LJC hackday.

**Téléchargez les binaires**  
Binaires du JDK 9 : https://jdk9.java.net/download/<br/>
Kulla.jar: [Adopt OpenJDK Cloudbees Build farm](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/langtools-1.9-linux-x86_64-kulla-dev/lastSuccessfulBuild/artifact/)

**MacOS users**<br/>
Si vous ne souhaitez pas définir JDK 9 comme votre JDK principal sur MacOS, voici quelque chose à [essayer](http://javapapo.blogspot.com/2013/02/multiple-java-jdks-on-your-macosx.html). 

Quel JDK j'utilise ?
```
// Vous indique les JDKs que vous avez
$ /usr/libexec/java_home -verbose
```

Puis-je définir JDK 8 ou JDK 9 comme mon JAVA_HOME par défaut quand je me loggue dans un terminal ?

```
// Vous pouvez définir cette command export dans votre ~/.profile
// et/ou ~/.bashrc pour définir de manière permanante votre JAVA_HOME
// pour tous les shells/terminaux/applications.
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"

// Pour définir JAVA_HOME pour Java 9 pour le terminal
// dans lequel vous êtes
export JAVA_HOME="`/usr/libexec/java_home -v '1.9*'`"
```

**Utilisateurs Linux/MacOS**<br/>
Comment passer d'une version du JDK à une autre quand j'en ai plusieurs ?

Ajoutez ce qui suit à votre .bashrc ou .bash_profile :

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

**Commençons**

*Lancer kulla.jar*

```
définissez JAVA_HOME pour pointer vers /chemin/JDK9/
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
[à venir]

*Exercices*<br/>
- https://java.net/projects/adoptopenjdk/downloads/download/REPL_Tutorial.pdf

*Autre mentions de REPL*  
- http://www.infoq.com/news/2014/09/repl-for-java (Java REPL, IntelliJ IDEA Java REPL plugin, Beanshell, etc...)
- http://redcode7.rssing.com/browser.php?indx=11248373&last=1&item=7
- http://www.javaworld.com/article/2601433/java-language/programmers-could-get-repl-in-official-java.html
- https://teamtreehouse.com/forum/installing-java-repl
- [Java REPL](https://github.com/parrt/cs652/blob/master/projects/Java-REPL.md) en 300 lignes de code

** Construire la branche de dev de Kulla d'OpenJDK 9 **

```
hg clone http://hg.openjdk.java.net/kulla/dev kulla-dev
cd kulla-dev
sh get_sources.sh
bash configure --with-boot-jdk=/path/to/jdk1.8.0
make clean images
make install  <=== optional
```

Assurez vous que le chemin du JDK construit ci-dessus est défini dans les variables d'environement ```JAVA_HOME``` et ```PATH```.

Téléchargez ```JLINE2``` depuis [Maven](http://mvnrepository.com/artifact/jline/jline), et définissez la variable d'environment ```JLINE2LIB``` pour pointer vers le jar téléchargé.

Pour compiler et lancer Kulla, voyez http://hg.openjdk.java.net/kulla/dev/langtools/file/4933dc482be7/repl/README ou téléchargez ce [pom.xml Maven](kulla-pom-xml.md) puis placez le dans le repertoire ```$HOME/sources/kulla-dev/langtools/repl/```.

Autre bon guides pour construire Kulla de zéro, regardez [ce post de JClarity](http://www.jclarity.com/2015/04/15/java-9-repl-getting-started-guide/) et [ce post d'Arun Gupta](http://blog.arungupta.me/jdk9-repl-getting-started/). Et ce joli et court [post](https://znurgl.wordpress.com/2015/05/17/jshell-upcoming-java-repl-packed-into-jdk9/) parGreg Bakos.

**Astuces**  

*Vider la fenêtre du terminal*  
 MacOS: CMD-K <br/>
 Linux: Ctrl-K ou Ctrl-L