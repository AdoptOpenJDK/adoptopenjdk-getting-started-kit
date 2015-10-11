# Instructions SonarQube pour OpenJDK 9

*Arbre du projet OpenJDK et de ses composants*
![](SonarQube-OpenJDK.jpg)

```
$ cd $SOURCE_CODE

$ cd jdk9
```
---

**Corba**
```
$ cd corba
```
Créez/updatez ```sonar-project.properties``` dans la repo ```corba``` avec comme contenu :
```
# métadonnées requises
sonar.projectKey=OpenJDK9-corba
sonar.projectName=OpenJDK9-corba
sonar.projectVersion=1.0

# chemin (requis) vers les répertoires source
sonar.sources=src/share/classes

# chemin (optionel) vers les binaires du projet, par exemple vers le répertoire des classes compilées
sonar.binaries=../build/linux-x86_64-normal-server-release/corba

```

puis lancez :

```
$ sonar-runner
```
---

**Hotspot**
```
$ cd ../hotspot
```
Téléchargez et installez le plugin Sonar C/C++ plugin depuis
[plugin Sonar C/C++ sur github](https://github.com/wenns/sonar-cxx)


Créez/updatez ```sonar-project.properties``` dans la repo  ```hotspot``` avec comme contenu :

```
# métadonnées requises
sonar.projectKey=OpenJDK9-hotspot
sonar.projectName=OpenJDK9-hotspot
sonar.projectVersion=1.0

# chemin (requis) vers les répertoires source
sonar.sources=src

# chemin (optionel) vers les binaires du projet, par exemple vers le répertoire des classes compilées
sonar.binaries=../build/linux-x86_64-normal-server-release/hotspot
```
puis lancez :

```
$ sonar-runner
```
---

**Langtools**
```
$ cd ../langtools
```

Créez/updatez ```sonar-project.properties``` dans la repo  ```langtools``` avec comme contenu :

```
# métadonnées requises
sonar.projectKey=OpenJDK9-langtools
sonar.projectName=OpenJDK9-langtools
sonar.projectVersion=1.0

# chemin (requis) vers les répertoires source
sonar.sources=src/share/classes

# chemin (optionel) vers le répertoire de tests
sonar.tests=test
sonar.skipPackageDesign=true

# chemin (optionel) vers les binaires du projet, par exemple vers le répertoire des classes compilées
sonar.binaries=../build/linux-x86_64-normal-server-release/langtools
```
puis lancez :

```
$ sonar-runner
```
---

**Jaxp**
```
$ cd ../jaxp
```

Créez/updatez ```pom.xml``` dans la repo ```jaxp``` avec comme contenu :
```xml
<project
    xmlns="http://maven.apache.org/POM/4.0.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
    http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>org.ljc</groupId>
    <artifactId>OpenJDK9-jaxp</artifactId>
    <version>1.0</version>
    <packaging>pom</packaging>
    <name>OpenJDK9-jaxp</name>
    <build>
        <sourceDirectory>src</sourceDirectory>
    </build>

    <properties>
        <sonar.dynamicAnalysis>true</sonar.dynamicAnalysis>
    </properties>
</project>
```
puis lancez :

```
$ mvn sonar:sonar
```
---
**JaxWs**
```
$ cd ../jaxws
```
Créez/updatez ```sonar-project.properties``` dans la repo  ```jaxws``` avec comme contenu :

```
# métadonnées requises
sonar.projectKey=OpenJDK9-jaxws
sonar.projectName=OpenJDK9-jaxws
sonar.projectVersion=1.0

# chemin (requis) vers les répertoires source
sonar.sources=src/share/jaf_classes,src/share/jaxws_classes

# chemin (optionel) vers le répertoire de tests
#sonar.tests=test

# chemin (optionel) vers les binaires du projet, par exemple vers le répertoire des classes compilées
sonar.binaries=../build/linux-x86_64-normal-server-release/jaxws
```

puis lancez :

```
$ sonar-runner
```
---
**Jdk**
```
$ cd ../jdk
```

Créez/updatez ```sonar-project.properties``` dans la repo ```jdk``` avec comme contenu :

```
# métadonnées requises
sonar.projectKey=OpenJDK9-jdk
sonar.projectName=OpenJDK9-jdk
sonar.projectVersion=1.0

# chemin (requis) vers les répertoires source
sonar.sources=src

# chemin (optionel) vers le répertoire de tests
sonar.tests=test
sonar.test.exclusions=test/java/lang/instrument/BigClass.java
sonar.exclusions=sonar.exclusions=**/*.doc,**/*.docx,**/*.ipch
sonar.skipPackageDesign=true

# chemin (optionel) vers les binaires du projet, par exemple vers le répertoire des classes compilées
sonar.binaries=../build/linux-x86_64-normal-server-release/jdkO
```

puis lancez :

```
$ export SONAR_RUNNER_OPTS=”-Xms40m -Xmx1536m \
-XX:MaxPermSize=512m -XX:ReservedCodeCacheSize=128m”
$ sonar-runner
```

Note : Si la commande échoue à cause d'un problème de mémoire, relancez la avec plus de mémoire.

---

**Nashorn**

```
$ cd ../nashorn
```

Créez/updatez ```sonar-project.properties``` dans la repo ```nashorn``` avec comme contenu :

```
# métadonnées requises
sonar.projectKey=OpenJDK9-nashorn
sonar.projectName=OpenJDK9-nashorn
sonar.projectVersion=1.0

# chemin (requis) vers les répertoires source
sonar.sources=src

#  chemin (optionel) vers le répertoire de tests
sonar.tests=test

# chemin (optionel) vers les binaires du projet, par exemple vers le répertoire des classes compilées
sonar.binaries=../build/linux-x86_64-normal-server-release/nashorn
```

puis lancez :

```
$ sonar-runner
```

Bravo; maintenant lancez SonarQube dans le navigateur via http://localhost:9000 pour voir les résultats des actions précédentes.
