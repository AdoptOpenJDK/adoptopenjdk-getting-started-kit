# OpenJDK 9 SonarQube passos

*Treemap do projeto OpenJDK e seus componentes*
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
Crie/atualize ```sonar-project.properties``` no repo ```corba``` de maneira que contenha:
```
# metadata requerido
sonar.projectKey=OpenJDK9-corba
sonar.projectName=OpenJDK9-corba
sonar.projectVersion=1.0

# path para diretórios fonte (requerido)
sonar.sources=src/java.corba/share/classes, src/java.sql/share/classes, src/jdk.rmic/share/classes

# path para diretórios binarios (opcional), por exemplo diretórios do Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/corba

```

e execute :

```
$ sonar-runner
```
---

**Hotspot**
```
$ cd ../hotspot
```

Efetue o download e instale Sonar C/C++ plugin
[Sonar C/C++ plugin on github](https://github.com/wenns/sonar-cxx)


Crie/atualize ```sonar-project.properties``` no repo```hotspot``` de maneira que contenha:

```
# metadata requerido
sonar.projectKey=OpenJDK9-hotspot
sonar.projectName=OpenJDK9-hotspot
sonar.projectVersion=1.0

# path para diretórios fonte (requerido)
sonar.sources=src

# path para diretórios binarios (opcional), por exemplo diretórios do Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/hotspot
```
e execute :

```
$ sonar-runner
```
---

**Langtools**
```
$ cd ../langtools
```

Crie/atualize ```sonar-project.properties``` no repo ```langtools``` de maneira que contenha:

```
# metadata requerido
sonar.projectKey=OpenJDK9-langtools
sonar.projectName=OpenJDK9-langtools
sonar.projectVersion=1.0

# path para diretórios fonte (requerido)
sonar.sources=src

# path para diretórios teste (opctional)
sonar.tests=test
sonar.skipPackageDesign=true

# path para diretórios binarios (opcional), por exemplo diretórios do Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/langtools
```
e execute :

```
$ sonar-runner
```
---

**Jaxp**
```
$ cd ../jaxp
```

Crie/atualize ```pom.xml``` no repo ```jaxp```  de maneira que contenha:
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
e execute :

```
$ mvn sonar:sonar
```
---
**JaxWs**
```
$ cd ../jaxws
```
Crie/atualize ```sonar-project.properties``` no repo ```jaxws``` de maneira que contenha:

```
# metadata requerido
sonar.projectKey=OpenJDK9-jaxws
sonar.projectName=OpenJDK9-jaxws
sonar.projectVersion=1.0

# path para diretórios fonte (requerido)
sonar.sources=src

# path para diretórios binarios (opcional), por exemplo diretórios do Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/jaxws
```

e execute :

```
$ sonar-runner
```
---
**Jdk**
```
$ cd ../jdk
```

Crie/atualize ```sonar-project.properties``` no repo ```jdk``` de maneira que contenha:

```
# metadata requerido
sonar.projectKey=OpenJDK9-jdk
sonar.projectName=OpenJDK9-jdk
sonar.projectVersion=1.0

# path para diretórios fonte (requerido)
sonar.sources=src

# path para diretórios teste (opctional)
sonar.tests=test
sonar.test.exclusions=test/java/lang/instrument/BigClass.java
sonar.exclusions=sonar.exclusions=**/*.doc,**/*.docx,**/*.ipch
sonar.skipPackageDesign=true

# path para diretórios binarios (opcional), por exemplo diretórios do Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/jdkO
```

e execute :

```
$ export SONAR_RUNNER_OPTS=”-Xms40m -Xmx1536m \
-XX:MaxPermSize=512m -XX:ReservedCodeCacheSize=128m”
$ sonar-runner
```

Nota: Se o comando falhar devido a problemas relacionados a memória, execute novamente com mais memória.

---

**Nashorn**

```
$ cd ../nashorn
```

Crie/atualize ```sonar-project.properties``` no repo ```nashorn``` de maneira que contenha:

```
# metadata requerido
sonar.projectKey=OpenJDK9-nashorn
sonar.projectName=OpenJDK9-nashorn
sonar.projectVersion=1.0

# path para diretórios fonte (requerido)
sonar.sources=src

# path para diretórios teste (opctional)
sonar.tests=test

# path para diretórios binarios (opcional), por exemplo diretórios do Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/nashorn
```

e execute :

```
$ sonar-runner
```

Muito bem, agora abra o SonarQube em seu browser via http://localhost:9000 para visualizar os resultados dos comandos acima.
