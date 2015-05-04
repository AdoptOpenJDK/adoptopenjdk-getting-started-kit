# OpenJDK 8 SonarQube passos

*Treemap do projeto OpenJDK e seus componentes*
![](SonarQube-OpenJDK.jpg)

```
$ cd $SOURCE_CODE

$ cd jdk8
```
---

**Corba**
```
$ cd corba
```
Criar/atualizar ```sonar-project.properties``` no repo ```corba``` que maneira que contenha:
```
# Metadata requerido
sonar.projectKey=OpenJDK8-corba
sonar.projectName=OpenJDK8-corba
sonar.projectVersion=1.0

# path para os diretorios fonte (requerido)
sonar.sources=src/share/classes

# path para o projeto onde os binarios estão localizados (optional), examplo diretório do Java bytecode
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


Crie/atualize ```sonar-project.properties``` no repo ```hotspot``` de maneira que contenha:

```
# Metadata requerido
sonar.projectKey=OpenJDK8-hotspot
sonar.projectName=OpenJDK8-hotspot
sonar.projectVersion=1.0

# path para os diretorios fonte (requerido)
sonar.sources=src

# path para o projeto onde os binarios estão localizados (optional), examplo diretório do Java bytecode
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
# Metadata requerido
sonar.projectKey=OpenJDK8-langtools
sonar.projectName=OpenJDK8-langtools
sonar.projectVersion=1.0

# path para os diretorios fonte (requerido)
sonar.sources=src/share/classes

# path para os diretorios dos testes (opcional)
sonar.tests=test
sonar.skipPackageDesign=true

# path para o projeto onde os binarios estão localizados (optional), examplo diretório do Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/langtools
```
and run :

```
$ sonar-runner
```
---

**Jaxp**
```
$ cd ../jaxp
```

Crie/atualize ```pom.xml``` no repo ```jaxp``` de maneira que contenha:
```xml
<project
    xmlns="http://maven.apache.org/POM/4.0.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
    http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>org.ljc</groupId>
    <artifactId>OpenJDK8-jaxp</artifactId>
    <version>1.0</version>
    <packaging>pom</packaging>
    <name>OpenJDK8-jaxp</name>
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
# Metadata requerido
sonar.projectKey=OpenJDK8-jaxws
sonar.projectName=OpenJDK8-jaxws
sonar.projectVersion=1.0

# path para os diretorios fonte (requerido)
sonar.sources=src/share/jaf_classes,src/share/jaxws_classes

# path para os diretorios dos testes (opcional)
#sonar.tests=test

# path para o projeto onde os binarios estão localizados (optional), examplo diretório do Java bytecode
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
# Metadata requerido
sonar.projectKey=OpenJDK8-jdk
sonar.projectName=OpenJDK8-jdk
sonar.projectVersion=1.0

# path para os diretorios fonte (requerido)
sonar.sources=src

# path para os diretorios dos testes (opcional)
sonar.tests=test
sonar.test.exclusions=test/java/lang/instrument/BigClass.java
sonar.exclusions=sonar.exclusions=**/*.doc,**/*.docx,**/*.ipch
sonar.skipPackageDesign=true

# path para o projeto onde os binarios estão localizados (optional), examplo diretório do Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/jdkO
```

e execute :

```
$ export SONAR_RUNNER_OPTS=”-Xms40m -Xmx1536m \
-XX:MaxPermSize=512m -XX:ReservedCodeCacheSize=128m”
$ sonar-runner
```

Note: If the command fails due to a memory problem, run the above command with additional memory.

---

**Nashorn**

```
$ cd ../nashorn
```

Crie/atualize ```sonar-project.properties``` no repo ```nashorn``` de maneira que contenha:

```
# Metadata requerido
sonar.projectKey=OpenJDK8-nashorn
sonar.projectName=OpenJDK8-nashorn
sonar.projectVersion=1.0

# path para os diretorios fonte (requerido)
sonar.sources=src

# path para os diretorios dos testes (opcional)
sonar.tests=test

# path para o projeto onde os binarios estão localizados (optional), examplo diretório do Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/nashorn
```

e execute :

```
$ sonar-runner
```

Muito bem, agora abra o SonarQube em seu browser via http://localhost:9000 para visualizar os resultados dos comandos acima.