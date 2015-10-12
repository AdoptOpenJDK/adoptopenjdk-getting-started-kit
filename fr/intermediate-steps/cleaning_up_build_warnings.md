# Nettoyage des warnings de build  (-Xlint)

```
 # Pour construire avec tous les warnings d'activés, utilisez :
 # make JAVAC_WARNINGS="-Xlint:all -Xmaxwarns 10000"
-JAVAC_WARNINGS := -Xlint:-unchecked,-deprecation,auxiliaryclass,cast,classfile,dep-ann,divzero,empty,fallthrough,finally,overloads,overrides,serial,static,try,varargs -Werror
+JAVAC_WARNINGS := -Xlint:all,-deprecation,-rawtypes,-unchecked -Werror
 
 # Tout code java exécuté durant une construction du JDK pour construire d'autre parties doit l'être
 # par le JDK de bootstrap (probablement via -Xbootclasspath/p: ) et pour ceci
```
**warnings C++**
```$ make clean JAVAC_WARNINGS="-Xlint:all -Xmaxwarns 10000" LOG=info images```

**warnings Java et C++**
```$ make clean JAVAC_WARNINGS="-Xlint:all -Xmaxwarns 10000" DISABLE_WARNINGS="-Xlint:all" LOG=info images```

Puis regardez build.log dans build/linux-x86_64-normal-server-release/ qui contient les warnings. Ouvrez le dans un editeur supportant la recherche par expressions régulières. Vous trouverez les warnings par repo en cherchant avec des regexp comme celles-ci (en supposant que vos sources OpenJDK soient dans le répertoire jdk9) :

```
jdk9/corba(.)* warning
jdk9/jaxp(.)* warning
jdk9/jaxws(.)* warning
jdk9/nashorn(.)* warning
```
Référez vous à https://bugs.openjdk.java.net/browse/JDK-8048839 

**JavaLintSummary (Javac build warnings)**<br/>
Jettez un oeil à http://openjdk.java.net/projects/code-tools/friday-stats/javacLintSummary.html et https://blogs.oracle.com/darcy/entry/warnings_removal_advice

Le code se trouvant à http://hg.openjdk.java.net/code-tools/friday-stats/

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