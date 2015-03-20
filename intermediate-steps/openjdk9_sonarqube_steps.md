# OpenJDK 9 SonarQube steps

*Treemap of the OpenJDK project and its components*
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
Create/update ```sonar-project.properties``` in the ```corba``` repo containing:
```
# required metadata
sonar.projectKey=OpenJDK9-corba
sonar.projectName=OpenJDK9-corba
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src/java.corba/share/classes, src/java.sql/share/classes, src/jdk.rmic/share/classes

# path to project binaries (optional), for example directory of Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/corba

```

and run :

```
$ sonar-runner
```
---

**Hotspot**
```
$ cd ../hotspot
```
Download and install Sonar C/C++ plugin from
[Sonar C/C++ plugin on github](https://github.com/wenns/sonar-cxx)


Create/update ```sonar-project.properties``` in the ```hotspot``` repo containing:

```
# required metadata
sonar.projectKey=OpenJDK9-hotspot
sonar.projectName=OpenJDK9-hotspot
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src

# path to project binaries (optional), for example directory of Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/hotspot
```
and run :

```
$ sonar-runner
```
---

**Langtools**
```
$ cd ../langtools
```

Create/update ```sonar-project.properties``` in the ```langtools``` repo containing:

```
# required metadata
sonar.projectKey=OpenJDK9-langtools
sonar.projectName=OpenJDK9-langtools
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src

# path to test source directories (optional)
sonar.tests=test
sonar.skipPackageDesign=true

# path to project binaries (optional), for example directory of Java bytecode
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

Create/update ```pom.xml``` and in the ```jaxp``` folder containing:
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
and run :

```
$ mvn sonar:sonar
```
---
**JaxWs**
```
$ cd ../jaxws
```
Create/update ```sonar-project.properties``` in the ```jaxws``` folder containing:

```
# required metadata
sonar.projectKey=OpenJDK9-jaxws
sonar.projectName=OpenJDK9-jaxws
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src

# path to project binaries (optional), for example directory of Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/jaxws
```

and run :

```
$ sonar-runner
```
---
**Jdk**
```
$ cd ../jdk
```

Create/update ```sonar-project.properties``` in the ```jdk``` folder, containing:

```
# required metadata
sonar.projectKey=OpenJDK9-jdk
sonar.projectName=OpenJDK9-jdk
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src

# path to test source directories (optional)
sonar.tests=test
sonar.test.exclusions=test/java/lang/instrument/BigClass.java
sonar.exclusions=sonar.exclusions=**/*.doc,**/*.docx,**/*.ipch
sonar.skipPackageDesign=true

# path to project binaries (optional), for example directory of Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/jdkO
```

and run :

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

Create/update ```sonar-project.properties``` in the ```nashorn``` folder, containing:

```
# required metadata
sonar.projectKey=OpenJDK9-nashorn
sonar.projectName=OpenJDK9-nashorn
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src

# path to test source directories (optional)
sonar.tests=test

# path to project binaries (optional), for example directory of Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/nashorn
```

and run :

```
$ sonar-runner
```

When done, load SonarQube in the browser via http://localhost:9000 to view the results of the above actions. 
