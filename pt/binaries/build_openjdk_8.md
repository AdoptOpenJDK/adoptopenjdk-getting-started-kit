# Compilando a OpenJDK 8

* Buildando a OpenJDK a partir do zero *

Caso você não tenha um OpenJDK8 na sua máquina virtual (pasta jdk8 ou jdk8_tl) exemplo.:

```$ cd $HOME/sources/jdk8_tl```

ou

```$ cd $HOME/sources/jdk8```

ou 

```$ cd $HOME/dev/jdk8```

então faça o seguinte:

```
$ cd $HOME/sources
ou
$ cd $HOME/dev

$ hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8
$ cd jdk8
$ chmod +x get_source.sh
$ ./get_source.sh
```
E você verá os seguintes resultados:


```
# Repositories:  ./corba . ./hotspot ./jaxp ./jaxws ./jdk ./langtools ./nashorn 
              ./corba:   cd ./corba && hg pull -u
                    .:   cd . && hg pull -u
               ./jaxp:   cd ./jaxp && hg pull -u
            ./hotspot:   cd ./hotspot && hg pull -u
              ./jaxws:   cd ./jaxws && hg pull -u
                ./jdk:   cd ./jdk && hg pull -u
          ./langtools:   cd ./langtools && hg pull -u
            ./nashorn:   cd ./nashorn && hg pull -u
.
.
.
hotspot:   added 1 changesets with 3 changes to 3 files
            ./hotspot:   3 files updated, 0 files merged, 0 files removed, 0 files unresolved
Waiting for processes ( 19269 19296 19308 19321 19341 19347 19360 ) to terminate nicely!
          ./langtools:   13 files updated, 0 files merged, 0 files removed, 0 files unresolved
                ./jdk:   24 files updated, 0 files merged, 1 files removed, 0 files unresolved
.
.
.
```
Geral [obtendo o código fonte](https://community.oracle.com/docs/DOC-991392) :

* [Linux (Ubuntu/Debian)](https://community.oracle.com/docs/DOC-991392)

* [MacOS X](https://community.oracle.com/docs/DOC-991392) <br/>
Nota: Se você estiver usando Mac OS X 10.8.5 com XCode 5 você vai precisar usar o a seguinte [solução](http://mail.openjdk.java.net/pipermail/build-dev/2013-September/010262.html).

* [Windows](https://community.oracle.com/docs/DOC-991392) <br/>
Caso os usuários do Windows ou MacOS X tenham problemas com a instalação ou o download dos fontes, é uma boa idéia criar sua própria VM usando o VirtualBox da Oracle e [seguir as instruções](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKVM)  [dead-link]. Crie e continue com o resto das instruções até a página "obtendo o código fonte" (e siga as etapas acima executando ```sh getSource.sh```).

Configure o Openjdk (Opcional se você ja rodou o comando anteriormente)

```$ bash configure```

Clean build com imagens

```$ make clean images```

ou

```$ make clean images LOG=debug     // to display DEBUG information ```

Faça o build de componentes individuais

```
$ make jdk
$ make hotspot
$ make test
```