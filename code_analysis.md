# Code analysis of OpenJDK projects

Below will help understand and visualise the contents of the OpenJDK projects to help understand the depth of the projects.

Using IntelliJ
Perform analysis of any of the OpenJDK projects within IntelliJ using its Code analysis functionality:
https://java.net/projects/adoptopenjdk/pages/JavaSourcesWithIntellij


Using SonarQube

Known issue: in the latest version of SonarQube, projects are not visible via any of the widgets, after running analysis on them - its being investigate but please feel free to post solutions if you are able to resolve it before us.

Install SonarQube on the Mac OS

Use this blog to install SonarQube (instructions for Mac OS, might need tweaks for other OSes)

Install SonaQube on the ubuntu VM

install mysql on ubuntu: see section titled "Installation" on https://help.ubuntu.com/12.04/serverguide/mysql.html

Create the sonar user in mysql by typing these commands: https://github.com/SonarSource/sonar-examples/blob/master/scripts/database/mysql/create_database.sql

From http://www.sonarqube.org/downloads/, download SonarQube and SonarQube Runner.
Configure the web server as documented here:  http://docs.codehaus.org/display/SONAR/Installing#Installing-installingWebServerInstallingtheWebServer

Start SonarQube and go to http:localhost:9000/sonar to verify that SonarQube started, and can see an empty dashboard.

$ /opt/sonarqube-4.5.1/bin/linux-x86-64/sonar.sh start   (path may differ)

Some projects, such as jaxp are analysed using Maven. Download Maven http://maven.apache.org/download.cgi and configure it. On the Maven link, follow the steps in the section titled “Unix-based operating Systems.”

Also set the MAVEN_OPTS environment variable - it’s needed when analysing the jdk project; otherwise, Sonar complains of not having enough memory to analyse the jdk.

Edit the sonar.properties of both SonarQube and sonar-runner.

Note: if the /opt/sonarqube-4.5.1/conf/sonar-properties contains, in the “web server” section, the sonar.web.context, then in /opt/sonar-runner-2.4/conf/sonar.properties, set the sonar.host.url=http://localhost:9000/sonar (path may differ). 
Otherwise, when SonarQube starts up, and tries to call the sonarqube API from the URL, http://localhost:9000, there will be no response and SonarQube will not start up.

Configure Maven plugin for sonar by creating the sonar profile. See steps here: http://docs.codehaus.org/display/SONAR/Installing+and+Configuring+Maven 

Start SonarQube

$ /opt/sonarqube-4.5.1/bin/linux-x86-64/sonar.sh start   (path may differ)

$ cd $SOURCE_CODE

$ cd jdk8

$ cd corba
Download the sonar-project.properties and place it in the corba folder, and run the below command:
$ sonar-runner

$ cd ../hotspot
Download and install Sonar C/C++ plugin (github: https://github.com/wenns/sonar-cxx) and then download the sonar-project.properties and place it in the hotspot folder, and run the below command:
$ sonar-runner

$ cd ../langtools
Download the sonar-project.properties and place it in the langtools folder, and run the below command:
$ sonar-runner

$ cd ../jaxp
Download the pom.xml and place it in the jaxp folder, and run the below command:
$ mvn sonar:sonar

$ cd ../jaxws
Download the sonar-project.properties and place it in the jaxws folder, and run the below command:
$ sonar-runner

$ cd ../jdk
Download the sonar-project.properties and place it in the jdk folder,  and run the below command:
$ sonar-runner

Note: If the command fails due to a memory problem, run the below command a re-run the previous one:
$ export SONAR_RUNNER_OPTS=”-Xms40m -Xmx1536m -XX:MaxPermSize=512m -XX:ReservedCodeCacheSize=128m”


$ cd ../nashorn
Download the sonar-project.properties and place it in the nashorn folder, and run the below command:
$ sonar-runner

When done, load SonarQube in the browser via http://localhost:9000 to view the results of the above actions. 

Sample visual from SonarQube 
(jdk repo not included; jitwatch included; zoom to see repo names;)


