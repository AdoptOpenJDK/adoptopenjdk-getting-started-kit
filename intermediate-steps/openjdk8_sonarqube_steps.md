# OpenJDK 8 SonarQube steps

*OpenJDK 8*

*Treemap of the OpenJDK project and its components*
![](SonarQube-OpenJDK.jpg)

```
$ cd $SOURCE_CODE

$ cd jdk8

$ cd corba
```

Create/update ```sonar-project.properties``` in the ```corba``` repo containing:
```
# required metadata
sonar.projectKey=OpenJDK-corba
sonar.projectName=OpenJDK-corba
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src/share/classes

# path to project binaries (optional), for example directory of Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/corba

```

and run the below command:

```
$ sonar-runner
```
---

```
$ cd ../hotspot
```
Download and install Sonar C/C++ plugin from
```
[github](https://github.com/wenns/sonar-cxx)
```

Create/update ```sonar-project.properties``` in the ```hotspot``` repo containing:

```
# required metadata
sonar.projectKey=OpenJDK-hotspot
sonar.projectName=OpenJDK-hotspot
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src

# path to project binaries (optional), for example directory of Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/hotspot
```
and run the below command:

```
$ sonar-runner
```
---

```
$ cd ../langtools
```

Create/update ```sonar-project.properties``` in the ```langtools``` repo containing:

```
# required metadata
sonar.projectKey=OpenJDK-langtools
sonar.projectName=OpenJDK-langtools
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src/share/classes

# path to test source directories (optional)
sonar.tests=test
sonar.skipPackageDesign=true

# path to project binaries (optional), for example directory of Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/langtools
```
and run the below command:

```bash
$ sonar-runner
```
---

```
$ cd ../jaxp
```

Create/update ```pom.xml``` and in the ```jaxp``` folder containing:
```xml
<project
    xmlns="http://maven.apache.org/POM/4.0.0"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>
    <groupId>org.ljc</groupId>
    <artifactId>OpenJDK-jaxp</artifactId>
    <version>1.0</version>
    <packaging>pom</packaging>
    <name>OpenJDK-jaxp</name>
    <build>
        <sourceDirectory>src</sourceDirectory>
    </build>

    <properties>
        <sonar.dynamicAnalysis>true</sonar.dynamicAnalysis>
    </properties>
</project>
```
and run the below command:

```
$ mvn sonar:sonar
```
---
```
$ cd ../jaxws
```
Create/update ```sonar-project.properties``` in the ```jaxws``` folder containing:

```
# required metadata
sonar.projectKey=OpenJDK-jaxws
sonar.projectName=OpenJDK-jaxws
sonar.projectVersion=1.0

# path to source directories (required)
sonar.sources=src/share/jaf_classes,src/share/jaxws_classes

# path to test source directories (optional)
#sonar.tests=test

# path to project binaries (optional), for example directory of Java bytecode
sonar.binaries=../build/linux-x86_64-normal-server-release/jaxws
```

and run the below command:

```
$ sonar-runner
```
---
```
$ cd ../jdk
```

Create/update ```sonar-project.properties``` in the ```jdk``` folder, containing:

```

```

and run the below command:

```
$ sonar-runner
```

Note: If the command fails due to a memory problem, run the below command a re-run the previous one:

```
$ export SONAR_RUNNER_OPTS=”-Xms40m -Xmx1536m \
-XX:MaxPermSize=512m -XX:ReservedCodeCacheSize=128m”

$ cd ../nashorn
```

Download the sonar-project.properties and place it in the nashorn folder, and run the below command:

```
$ sonar-runner
```

When done, load SonarQube in the browser via http://localhost:9000 to view the results of the above actions. 
