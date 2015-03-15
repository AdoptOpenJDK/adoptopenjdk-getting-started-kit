# OpenJDK 8 SonarQube steps

*OpenJDK 8*

*Treemap of the OpenJDK project and its components*
![](SonarQube-OpenJDK.jpg)

```
$ cd $SOURCE_CODE

$ cd jdk8

$ cd corba
```

Download the sonar-project.properties and place it in the corba folder, and run the below command:

```
$ sonar-runner

$ cd ../hotspot
```

Download and install Sonar C/C++ plugin on [github](https://github.com/wenns/sonar-cxx) and then download the sonar-project.properties and place it in the hotspot folder, and run the below command:

```
$ sonar-runner

$ cd ../langtools
```

Download the sonar-project.properties and place it in the langtools folder, and run the below command:

```
$ sonar-runner

$ cd ../jaxp
```

Download the pom.xml and place it in the jaxp folder, and run the below command:

```
$ mvn sonar:sonar

$ cd ../jaxws
```
Download the sonar-project.properties and place it in the jaxws folder, and run the below command:

```
$ sonar-runner

$ cd ../jdk
```

Download the sonar-project.properties and place it in the jdk folder,  and run the below command:

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
