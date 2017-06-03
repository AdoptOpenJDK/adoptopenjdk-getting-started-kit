# Kulla

**Site Oficial** <br/>
http://openjdk.java.net/projects/kulla/

**JEP relacionado ao Kulla**<br/>
https://bugs.openjdk.java.net/browse/JDK-8043364

**Feedback**  
Veja os comentarios do recente LJC hackday e/ou adicione seus comentários [feedback](https://docs.google.com/document/d/1b236MW-cliUrmSWyVkBBs460Inh5lLcLvRsOmGThzlg/edit?usp=sharing).

**Download binarios**
JDK9 binarios: https://jdk9.java.net/download/ [dead-link]<br/>
Kulla.jar: [Adopt OpenJDK Cloudbees Build farm](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/langtools-1.9-linux-x86_64-kulla-dev/lastSuccessfulBuild/artifact/) [dead-link]

**Usuários MacOS**<br/>
Se você não deseja que a JDK9 o padão no seu MacOS, veja [este link](http://javapapo.blogspot.com/2013/02/multiple-java-jdks-on-your-macosx.html).

Qual JDK estou usando ?
```
// Tells you which JDKs you have
$ /usr/libexec/java_home -verbose
```

Como posso setar JDK8 ou JDK9 como default JAVA_HOME de maneira automatica a cada vez que eu abrir o terminal?
```
// Você pode setar o comando export no ~/.profile
// e/ou ~/.bashrc para configurar permanentemente a variavel JAVA_HOME
// para todas as shells/terminals/applications.
export JAVA_HOME="`/usr/libexec/java_home -v '1.8*'`"

// Set JAVA_HOME para ser Java 9 no terminal
// (nao aplica para outros terminais)
export JAVA_HOME="`/usr/libexec/java_home -v '1.9*'`"
```

**Usuarios Linux/MacOS**<br/>
Como posso mudar o JDK de versão se eu tiver diversas versões diferentes?

Adicione as linhas abaixo no seu .bashrc ou .bash_profile:

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

**Iniciando**

*Executando o kulla.jar*

```
set JAVA_HOME to point to /path/JDK9/bin/
```
```
$ java -jar ~/sources/kulla/kulla.jar
```

```
| Welcome to the Java REPL -- Version 0.411
| Type /help for help

->|
```

*/Opções de ajuda*

```
-> /help
Digite uma regEx Java, statement, ou uma declaração.
Ou digite um dos comandos abaixo:

{
. 
.
. 
  [Options]
. 
.
. 
}

Atalhos suportados incluem:
<tab> -- mostra todas as possíveis combinações para o texto digitado no console
Shift-<tab> -- mostra uma synopsis para o método/construtor digitado no console
```

*Slides*
[em breve]

*Exercícios*<br/>
- https://java.net/projects/adoptopenjdk/downloads/download/REPL_Tutorial.pdf [dead-link]

*Outras publicações disponiveis sobre o REPL*
- http://www.infoq.com/news/2014/09/repl-for-java (Java REPL, IntelliJ IDEA Java REPL plugin, Beanshell, etc...)
- http://redcode7.rssing.com/browser.php?indx=11248373&last=1&item=7
- http://www.javaworld.com/article/2601433/java-language/programmers-could-get-repl-in-official-java.html
- https://teamtreehouse.com/forum/installing-java-repl
- [Java REPL](https://github.com/parrt/cs652/blob/master/projects/Java-REPL.md) em 300 linhas de  código

**Gerando a build do Kulla dev branch do OpenJDK9 **

```
hg clone http://hg.openjdk.java.net/kulla/dev kulla-dev
cd kulla-dev
sh get_sources.sh
bash configure --with-boot-jdk=/path/to/jdk1.8.0
make clean images
make install  <=== optional
```

Confirme que o PATH do JDK está setado nas variáveis de ambiente ```JAVA_HOME``` e ```PATH```.

Baixe ```JLINE2``` do maven repo [Maven](http://mvnrepository.com/artifact/jline/jline), e sete a variável de ambiente ```JLINE2LIB``` para apontar para o jar que acabamos de baixar.

Para compilar e rodar Kulla, veja http://hg.openjdk.java.net/kulla/dev/langtools/file/4933dc482be7/repl/README.

Veja outro guia interessante de como efetuar o build do Kulla do zero, neste [blog post](http://www.jclarity.com/2015/04/15/java-9-repl-getting-started-guide/).

**Gotachas**  

*Limpar o terminal*
 MacOS: CMD-K <br/>
 Linux: Ctrl-K or Ctrl-L