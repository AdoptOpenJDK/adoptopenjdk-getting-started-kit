# Analises de codigo de prjetos OpenJDK

Os passos abaixo servem de grande ajuda para entender mais profundamente a estrutura do projeto

###Usando IntelliJ###
Execute sua analysis do OpenJDK dentro do IntelliJ usando o Code analysis:
https://java.net/projects/adoptopenjdk/pages/JavaSourcesWithIntellij


###Usando SonarQube##

Depois de executar os passos abaixo, a seguinte dashboard será criada:
![[[SonarQube Configured for OpenJDK8 and OpenJDK9]]](SonarQube-OpenJDK8-and-OpenJDK9.png)

Nos vamos configurar 3 passos"  - [SonarQube](http://docs.sonarqube.org/display/SONAR/Installing):
* A base de dados (para guardar os resultados);
* o web server (para display e configurar o sonarqube);
* Os analyzers (Que analizam codigo).

Em seguida nos vamos executar o SonarQube analysis codebase, e criar filtros customizados no SonarQube para mostrar um dashboard por versao do OpenJDK.
* [Project Nemo: JDK7 SonarQube analysis dashboard](http://nemo.sonarqube.org/dashboard/index/net.java.openjdk:jdk7)
* [OpenJDK 8 SonarQube steps](openjdk8_sonarqube_steps.md)
* [OpenJDK 9 SonarQube steps](openjdk9_sonarqube_steps.md)
* [OpenJDK SonarQube Dashboard steps](openjdk_sonarqube_dashboard_steps.md)

**Problemas conhecidos:** nas ultimas versões do SonarQube, projetos nao estavam visiveis em nenhum dos widgets, apos executar o analysis - estes problemas estão sendo investigados, mas fique a vontade em nos comunicar caso encontre a solução antes de nós.

**Instale o SonarQube no Mac OS**

Use este [blog](https://neomatrix369.wordpress.com/2013/09/16/installing-sonarqube-formely-sonar-on-mac-os-x-mountain-lion-10-8-4/) para instalar o SonarQube (Mac OS pode precisar de ajustes especificos)

**Instale MySQL e SonarQube no Ubuntu VM**
1. Download e instale MySQL no Ubuntu. Busque por "Installation" em https://help.ubuntu.com/12.04/serverguide/mysql.html

2. No MySQL, crie a database e user - https://github.com/SonarSource/sonar-examples/blob/master/scripts/database/mysql/create_database.sql

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

3. Download de http://www.sonarqube.org/downloads/, SonarQube and SonarQube Runner. Asumindo que a instalação do SonarQube e SonarQube Runner será em ```/opt/sonarqube-4.5.1``` e ```/opt/sonar-runner-2.4``` respectivamente.
    * Configure o SonarQube para usar o MySQL database e ignorar o default in-memory em ``` /opt/sonarqube-4.5.1/conf/sonar.properties ```

    * Descomente as linhas abaixo:
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
    * Inicie o SonarQube e veja a default dashboard
    ```
    $ cd /opt/sonarqube-4.5.1/bin/linux-x86-64
    $ sudo ./sonar.sh start
    enter password for your user. In this case, j1a2v3a4
    ```

4. Configure o SonarQube Runner, que será usado para analisar os projetos.
    ```
    $ vi /opt/sonar-runner-2.4/conf/sonar-runner.properties
    sonar.host.url=http://localhost:9000/sonar
    sonar.jdbc.url=jdbc:mysql://localhost:3306/sonar?useUnicode=true&amp;characterEncoding=utf8
    sonar.jdbc.username=sonar
    sonar.jdbc.password=sonar
    sonar.sourceEncoding=UTF-8
    ```
5. Maven também sera usado para analisarsr o jaxp.
    * Instale Maven se não estiver instalado.
        * Download Maven http://maven.apache.org/download.cgi
        * Siga os passos de instalação "Unix-based operating Systems."
        * Também exporte MAVEN_OPTS environment variable - Requerida para analisar o jdk project; caso contrario, Sonar reclama nao ter memoria suficiente para analisar o jdk.

    * Configure o Maven settings com os detalhes do SonarQube no profile - http://docs.codehaus.org/display/SONAR/Installing+and+Configuring+Maven

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

6. Inicie SonarQube and abra o link http://localhost:9000/sonar verificando que o SonarQube esta iniciado corretamente com uma dashboard vasia.

    ```
    $ /opt/sonarqube-4.5.1/bin/linux-x86-64/sonar.sh start   (path may differ)
    ```
7. Abra http://localhost:9000/sonar

**Nota:** Se ```/opt/sonarqube-4.5.1/conf/sonar-properties``` contiver na section “web server” sonar.web.context, então ```/opt/sonar-runner-2.4/conf/sonar.properties``` deve estar setado sonar.host.url=http://localhost:9000/sonar

Caso contrario, quando o SonarQube iniciar, e tentar chamar o sonarqube API na URL http://localhost:9000, não haverá resposta e o SonarQube não iniciara corretamente.

Exemplo visual do SonarQube<br/>
(note: repositório jdk não incluso; jitwatch incluso; zoom para ver os nomes;)

![[[SonarQube Treemap Image]]](SonarQube-OpenJDK8-treemap.jpg)
