# Analyse du code des projets d'OpenJDK

Les étapes ci-dessous vous aiderons à visualiser le contenu des projets OpenJDK pour en comprendre la profondeur.


###En utilisant IntelliJ###
Analysez un projet d'OpenJDK avec IntelliJ en utilisant ses fonctionalités d'analyse de code :
https://java.net/projects/adoptopenjdk/pages/JavaSourcesWithIntellij


###En utilisant SonarQube##

Une fois suivi les instructions ci-dessous vous aurez ce tableau de bord :

![[[SonarQube configuré pour OpenJDK 8 et OpenJDK 9]]](SonarQube-OpenJDK8-and-OpenJDK9.png)

Nous configurerons les 3 parties de SonarQube, en suivant SonarQube before analysing the codebase - http://docs.sonarqube.org/display/SONAR/Installing:
* la base de donnée (pour stocker les résultats);
* le serveur web (pour afficher et configurer SonarQube);
* les analyzeurs (qui analysent le code).

Puis nous lancerons les analyses SonarQube sur l'ensemble de la base de code, et nous créerons nos propre filtres sur SonarQube pour afficher un tableau de bord par version d'OpenJDK.
* [Projet Nemo: Tableau de bord de l'analyse SonarQube de JDK 7](http://nemo.sonarqube.org/dashboard/index/net.java.openjdk:jdk7)
* [Instructions SonarQube pour OpenJDK 8](openjdk8_sonarqube_steps.md)
* [Instructions SonarQube pour OpenJDK 9](openjdk9_sonarqube_steps.md)
* [Instructions pour le tableau de bord de SonarQube pour OpenJDK](openjdk_sonarqube_dashboard_steps.md)

**Problème connus:** dans la dernière version de SonarQube, les projets n'étaient pas visible via les widgets après leur analyse - c'est en cours d'investigation mais si vous trouvez une solution avant nous, faite le nous savoir.

**Installer SonarQube sur Mac OS**

Suivez les instructions de cet [article](https://neomatrix369.wordpress.com/2013/09/16/installing-sonarqube-formely-sonar-on-mac-os-x-mountain-lion-10-8-4/) pour installer SonarQube ou les instructions ci-dessous (instructions pour Mac OS, quelques ajustements peuvent être requis pour d'autres OS)

**Installez MySQL et SonarQube dans une VM Ubuntu**
1. Téléchargez et installez MySQL sur Ubuntu. Voir la section "Installation" sur https://help.ubuntu.com/12.04/serverguide/mysql.html

2. Dans MySQL, créez la base et l'utilisateur sonar - https://github.com/SonarSource/sonar-examples/blob/master/scripts/database/mysql/create_database.sql

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

3. Depuis http://www.sonarqube.org/downloads/, téléchargez SonarQube et SonarQube Runner. Supposont que SonarQube et SonarQube Runner soient installés dans ```/opt/sonarqube-4.5.1``` et ```/opt/sonar-runner-2.4``` respectivement.
    * Configurez SonarQube pour utiliser la base MySQL au lieu de la base embarquée par défaut en modifiant ``` /opt/sonarqube-4.5.1/conf/sonar.properties ```

    * Décommentez les propriétés suivantes :
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
    * Lancez SonarQube pour voir le tableau de bord par défaut
    ```
    $ cd /opt/sonarqube-4.5.1/bin/linux-x86-64
    $ sudo ./sonar.sh start
    entrez le mot de passe pour votre utilisateur, ici j1a2v3a4
    ```

4. Configurez SonarQube Runner, qui analysera les projets.
    ```
    $ vi /opt/sonar-runner-2.4/conf/sonar-runner.properties
    sonar.host.url=http://localhost:9000/sonar
    sonar.jdbc.url=jdbc:mysql://localhost:3306/sonar?useUnicode=true&amp;characterEncoding=utf8
    sonar.jdbc.username=sonar
    sonar.jdbc.password=sonar
    sonar.sourceEncoding=UTF-8
    ```
5. Maven est également utilisé pour analyser jaxp.
    * Installez Maven si ce n'est déjà fait.
        * Téléchargez Maven http://maven.apache.org/download.cgi
        * A partir du lien, suivez les étapes dans la section "Unix-based operating Systems."
        * Définissez la variable d'environement MAVEN_OPTS - elle est nécessaire pour analyser le projet jdk ; sinon SonarQube se plaint de ne pas avoir assez de mémoire.

    * Configurez les paramètres pour SonarQube dans un profil Maven - http://docs.codehaus.org/display/SONAR/Installing+and+Configuring+Maven

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

6. Lancez SonarQube et allez sur http://localhost:9000/sonar pour vous assurer que SonarQube est démarré, et que vous pouvez voir un tableau de bord vide.

    ```
    $ /opt/sonarqube-4.5.1/bin/linux-x86-64/sonar.sh start   (le chemin peut varier)
    ```
7. Allez sur http://localhost:9000/sonar

**Note:** si ```/opt/sonarqube-4.5.1/conf/sonar-properties``` contient, dans la section “web server”, le sonar.web.context, alors dans ```/opt/sonar-runner-2.4/conf/sonar.properties```, définissez sonar.host.url=http://localhost:9000/sonar

Sinon, quand SonarQube se lance, et essaye d'appeler les API SonarQube depuis l'URL, http://localhost:9000, il n'y aura pas de réponse et SonarQube ne démarrera pas.

Exemple de visuel de SonarQube<br/>
(note: la repo jdk n'est pas incluse ; jitwatch inclu; zoommez pour voir les noms de repo;)

![[[SonarQube Treemap Image]]](SonarQube-OpenJDK8-treemap.jpg)
