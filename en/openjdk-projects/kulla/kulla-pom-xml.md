# Maven pom.xml to build your own kulla.jar

Save the below ```xml``` as ```pom.xml```, and place it in the ```$HOME/sources/kulla-dev/langtools/repl/``` folder:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<project>
   <modelVersion>4.0.0</modelVersion>
   <groupId>org.ljc.adoptopenjdk</groupId>
   <artifactId>java-repl</artifactId>
   <version>1.0-SNAPSHOT</version>
   <packaging>jar</packaging>
   <properties>
      <jdk.version>1.9</jdk.version>
      <testng.version>6.8.21</testng.version>
      <build.image.folder>../../build/linux-x86_64-normal-server-release/images/jdk</build.image.folder>
   </properties>
   <build>
      <plugins>
         <plugin>
            <groupId>org.codehaus.mojo</groupId>
            <artifactId>build-helper-maven-plugin</artifactId>
            <version>1.7</version>
            <executions>
               <execution>
                  <id>add-source</id>
                  <phase>generate-sources</phase>
                  <goals>
                     <goal>add-source</goal>
                  </goals>
                  <configuration>
                     <sources>
                       <source>../src/jdk.jshell/share/classes/jdk/internal/jshell/impl</source>
                        <source>../src/jdk.jshell/share/classes/jdk/internal/jshell/impl/remote</source>
                        <source>../src/jdk.jshell/share/classes/jdk/internal/jshell/tool</source>
                        <source>../src/jdk.jshell/share/classes/jdk/jshell</source>
                        <source>../../jdk/src/jdk.internal.le/share/classes/jdk/internal/jline/</source>
                        <source>../../jdk/src/jdk.internal.le/share/classes/jdk/internal/jline/console</source>
                        <source>../../jdk/src/jdk.internal.le/share/classes/jdk/internal/jline/console/completer</source>
                        <source>../../jdk/src/jdk.internal.le/share/classes/jdk/internal/jline/console/history</source>
                        <source>../../jdk/src/jdk.internal.le/share/classes/jdk/internal/jline/console/internal</source>
                        <source>../../jdk/src/jdk.internal.le/share/classes/jdk/internal/jline/internal</source>
                     </sources>
                  </configuration>
               </execution>
            </executions>
         </plugin>
         <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-resources-plugin</artifactId>
            <version>2.6</version>
            <executions>
               <execution>
                 <id>copy-resources</id>
                 <phase>validate</phase>
                 <goals>
                   <goal>copy-resources</goal>
                 </goals>
                 <configuration>
                   <outputDirectory>${basedir}/target/classes/jdk/internal/jline/console/completer</outputDirectory>
                   <resources>
                     <resource>
                         <directory>${basedir}/../../jdk/src/jdk.jline/share/classes/jdk/internal/jline/console/completer</directory>
                         <includes>
                           <include>**/*.properties</include>
                         </includes>
                         <filtering>true</filtering>
                     </resource>
                   </resources>
                 </configuration>
               </execution>
            </executions>
         </plugin>
         <plugin>
            <groupId>org.apache.maven.plugins</groupId>
            <artifactId>maven-compiler-plugin</artifactId>
            <version>3.3</version>
            <configuration>
               <verbose>true</verbose>
               <fork>true</fork>
               <executable>${build.image.folder}/bin/javac</executable>
               <compilerVersion>${jdk.version}</compilerVersion>
               <buildDirectory>build</buildDirectory>
               <compilerArgs>
                  <arg>-Xlint:unchecked</arg>
                  <arg>-Xdiags:verbose</arg>
               </compilerArgs>
               <source>${jdk.version}</source>
               <target>${jdk.version}</target>
            </configuration>
            <executions>
               <execution>
                  <id>default-compile</id>
                  <phase>compile</phase>
                  <goals>
                     <goal>compile</goal>
                  </goals>
               </execution>
            </executions>
         </plugin>
         <plugin>
            <artifactId>maven-assembly-plugin</artifactId>
            <configuration>
               <archive>
                  <manifest>
                     <mainClass>jdk.internal.jshell.tool.JShellTool</mainClass>
                  </manifest>
               </archive>
               <descriptorRefs>
                  <descriptorRef>jar-with-dependencies</descriptorRef>
               </descriptorRefs>
               <finalName>kulla</finalName>
               <appendAssemblyId>false</appendAssemblyId>
            </configuration>
            <executions>
               <execution>
                  <id>make-assembly</id>
                  <phase>package</phase>
                  <goals>
                     <goal>single</goal>
                  </goals>
               </execution>
            </executions>
         </plugin>
      </plugins>
   </build>
   <dependencies>
      <dependency>
         <groupId>org.testng</groupId>
         <artifactId>testng</artifactId>
         <version>${testng.version}</version>
         <scope>test</scope>
      </dependency>
      <dependency>
         <groupId>jline</groupId>
         <artifactId>jline</artifactId>
         <version>2.12.1</version>
      </dependency>
      <dependency>
         <groupId>com.beust</groupId>
         <artifactId>jcommander</artifactId>
         <version>1.48</version>
      </dependency>
   </dependencies>
</project>
```

And then run the following maven command:

```
$ mvn clean package -Dbuild.image.folder=$JAVA9_HOME
```

where ```$JAVA9_HOME``` points to the JDK9 binary downloaded from the [JDK9 Early Access site](https://jdk9.java.net/download/).

or the below if you have built your own JDK image from the ```kulla-dev``` forest (build folder must have the images created):

```
$ mvn clean package -Dbuild.image.folder=../../build/linux-x86_64-normal-server-release/images/jdk


```