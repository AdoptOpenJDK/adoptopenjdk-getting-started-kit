# Removendo warnings indesejados  (-Xlint)

```
 # Para efetuar o build com warnings enabled, execute:
 # make JAVAC_WARNINGS="-Xlint:all -Xmaxwarns 10000"
-JAVAC_WARNINGS := -Xlint:-unchecked,-deprecation,auxiliaryclass,cast,classfile,dep-ann,divzero,empty,fallthrough,finally,overloads,overrides,serial,static,try,varargs -Werror
+JAVAC_WARNINGS := -Xlint:all,-deprecation,-rawtypes,-unchecked -Werror
 
 # Qualquer codigo java executado durante um JDK build para fazer o build de outras partes do JDK precisam ser
 # executadas pelo bootstrap JDK (provavelmente com -Xbootclasspath/p: )
```
**C++ build warnings**
```$ make clean JAVAC_WARNINGS="-Xlint:all -Xmaxwarns 10000" LOG=info images```

**Java and C++ build warnings**
```$ make clean JAVAC_WARNINGS="-Xlint:all -Xmaxwarns 10000" DISABLE_WARNINGS="-Xlint:all" LOG=info images```


Em seguida olhe o build.log em build/linux-x86_64-normal-server-release/ que deve então conter os warnings.
Abra o log em um editor que suporte buscas com regex. Use uma das regEx abaixo (supondo que o seu OpenJDK sources esta localizado em jdk9 directory):

```
jdk9/corba(.)* warning
jdk9/jaxp(.)* warning
jdk9/jaxws(.)* warning
jdk9/nashorn(.)* warning
```
Referencia: https://bugs.openjdk.java.net/browse/JDK-8048839

**JavaLintSummary (Javac build warnings)**<br/>
Veja mais: http://openjdk.java.net/projects/code-tools/friday-stats/javacLintSummary.html e https://blogs.oracle.com/darcy/entry/warnings_removal_advice

Codigo base pode ser encontrado em: http://hg.openjdk.java.net/code-tools/friday-stats/

```
$ sudo apt-get install ant
$ ant -Djdk=<path to jdk8>

$ java -cp [path-friday-stats]/dist/lib/javacLintSummary.jar:$JAVA8_HOME/lib/tools.jar \
javacLintSummary.Main -Xlint:all \ 
-html report -Xdoclint \
jdk/src/**/*.java

$ java -cp [path-friday-stats]/dist/lib/javacLintSummary.jar:$JAVA8_HOME/lib/tools.jar \ javacLintSummary.Main -Xlint:all -html report -Xdoclint \
com.sun 
```