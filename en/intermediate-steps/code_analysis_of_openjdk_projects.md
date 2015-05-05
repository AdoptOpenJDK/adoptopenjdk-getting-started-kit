# Code analysis of OpenJDK projects

The steps below will allow us to visualise the contents of the OpenJDK projects to help understand the depth of the projects.


###Using IntelliJ###
Perform analysis of any of the OpenJDK projects within IntelliJ using its Code analysis functionality:
https://java.net/projects/adoptopenjdk/pages/JavaSourcesWithIntellij


###Using SonarQube##

After going through the steps below, we'll have this dashboard:

![[[SonarQube Configured for OpenJDK8 and OpenJDK9]]](SonarQube-OpenJDK8-and-OpenJDK9.png)

We'll configure the 3 parts of SonarQube following SonarQube before analysing the codebase - http://docs.sonarqube.org/display/SONAR/Installing:
* the database (to store the results);
* the web server (to display and configure sonarqube);
* the analyzers (which analyse code).

Then we'll run SonarQube analysis across the codebase, and create custom filters on SonarQube to show us one dashboard per version of OpenJDK.
* [Project Nemo: JDK7 SonarQube analysis dashboard](http://nemo.sonarqube.org/dashboard/index/net.java.openjdk:jdk7)
* [OpenJDK 8 SonarQube steps](openjdk8_sonarqube_steps.md)
* [OpenJDK 9 SonarQube steps](openjdk9_sonarqube_steps.md)
* [OpenJDK SonarQube Dashboard steps](openjdk_sonarqube_dashboard_steps.md)

**Known issue:** in the latest version of SonarQube, projects were not visible via any of the widgets, after running analysis on them - its being investigate but please feel free to post solutions if you are able to resolve it before us.

**Install SonarQube on the Mac OS**

Use this [blog](https://neomatrix369.wordpress.com/2013/09/16/installing-sonarqube-formely-sonar-on-mac-os-x-mountain-lion-10-8-4/) to install SonarQube or the instructions below (instructions for Mac OS, might need tweaks for other OSes)

**Install MySQL and SonarQube on the Ubuntu VM**
1. Download and install MySQL on Ubuntu. See section titled "Installation" on https://help.ubuntu.com/12.04/serverguide/mysql.html

2. In MySQL, create the sonar database and user - https://github.com/SonarSource/sonar-examples/blob/master/scripts/database/mysql/create_database.sql

    ```
    mysql> CREATE DATABASE sonar CHARACTER SET utf8 COLLATE utf8_general_ci;
    Query OK, 0 rows affected (0.01 sec)

    mysql> CREATE USER 'sonar' IDENTIFIED BY 'sonar';
    Query OK, 0 rows affected (0.01 sec)

    mysql> GRANT ALL ON sonar.* TO 'sonar'@'%' IDENTIFIED BY 'sonar';
    Query OK, 0 rows affected (0.01 sec)

    mysql> GRANT ALL ON sonar.* TO 'sonar'@'localhost' IDENTIFIED BY 'sonar';
    Query OK, 0 rows affected (0.01 sec)

    mysql> FLUSH PRIVILEGES;
    Query OK, 0 rows affected (0.01 sec)
    ```

3. From http://www.sonarqube.org/downloads/, download SonarQube and SonarQube Runner. Assuming SonarQube and SonarQube Runner are installed in ```/opt/sonarqube-4.5.1``` and ```/opt/sonar-runner-2.4``` respectively.
    * Configure SonarQube to use the MySQL database instead of the default in-memory one in ``` /opt/sonarqube-4.5.1/conf/sonar.properties ```

    * Uncomment the following properties:
    ```
    sonar.jdbc.username=sonar
    sonar.jdbc.password=sonar
    . . .
    sonar.jdbc.url=jdbc:mysql://localhost:3306/sonar?useUnicode=true&characterEncoding=utf8&rewriteBatchedStatements=true&useConfigs=maxPerformance
    . . .
    sonar.web.host=127.0.0.1
    sonar.web.context=/sonar
    sonar.web.port=9000
    ```
    * Start SonarQube to see the default dashboard
    ```
    $ cd /opt/sonarqube-4.5.1/bin/linux-x86-64
    $ sudo ./sonar.sh start
    enter password for your user. In this case, j1a2v3a4
    ```

4. Configure the SonarQube Runner, which will be used to analyse the projects.
    ```
    $ vi /opt/sonar-runner-2.4/conf/sonar-runner.properties
    sonar.host.url=http://localhost:9000/sonar
    sonar.jdbc.url=jdbc:mysql://localhost:3306/sonar?useUnicode=true&amp;characterEncoding=utf8
    sonar.jdbc.username=sonar
    sonar.jdbc.password=sonar
    sonar.sourceEncoding=UTF-8
    ```
5. Maven is also used to analyse jaxp.
    * Install Maven if it's not already installed.
        * Download Maven http://maven.apache.org/download.cgi
        * On the Maven link, follow the steps in the section titled "Unix-based operating Systems."
        * Also set the MAVEN_OPTS environment variable - it’s needed when analysing the jdk project; otherwise, Sonar complains of not having enough memory to analyse the jdk.

    * Configure Maven settings with the details of SonarQube in a sonar profile - http://docs.codehaus.org/display/SONAR/Installing+and+Configuring+Maven

    ```
    $ vi /opt/maven-3.0.5/conf/setting.xml
      <profile>
          <id>sonar</id>
          <activation>
              <activeByDefault>true</activeByDefault>
          </activation>
          <properties>
              <!-- Example for MySQL-->
              <sonar.jdbc.url>
                jdbc:mysql://localhost:3306/sonar?useUnicode=true&amp;characterEncoding=utf8
              </sonar.jdbc.url>
              <sonar.jdbc.username>sonar</sonar.jdbc.username>
              <sonar.jdbc.password>sonar</sonar.jdbc.password>
              <!-- using the default value of http://localhost:9000 does not work.
              The context root, '/sonar' is required. -->
              <sonar.host.url>http://localhost:9000/sonar</sonar.host.url>
           </properties>
      </profile>
    ```

6. Start SonarQube and go to http://localhost:9000/sonar to verify that SonarQube started, and can see an empty dashboard.

    ```
    $ /opt/sonarqube-4.5.1/bin/linux-x86-64/sonar.sh start   (path may differ)
    ```
7. Go to http://localhost:9000/sonar

**Note:** if the ```/opt/sonarqube-4.5.1/conf/sonar-properties``` contains, in the “web server” section, the sonar.web.context, then in ```/opt/sonar-runner-2.4/conf/sonar.properties```, set the sonar.host.url=http://localhost:9000/sonar

Otherwise, when SonarQube starts up, and tries to call the sonarqube API from the URL, http://localhost:9000, there will be no response and SonarQube will not start up.

Sample visual from SonarQube<br/>
(note: jdk repo not included; jitwatch included; zoom to see repo names;)

![[[SonarQube Treemap Image]]](SonarQube-OpenJDK8-treemap.jpg)
