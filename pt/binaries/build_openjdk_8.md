# Build do OpenJDK 8

Link para uma detalhada pagina coom passos bem detalhados (em ingles) [Adopt OpenJDK wiki](https://java.net/projects/adoptopenjdk/pages/Build).

*Clonando oOpenJDK repo (one-time)*

Caso você nao tenha um OpenJDK8 na sua VM (jdk8 or jdk8_tl folder) nos seguintes diretorios:

```$ cd $HOME/sources/jdk8_tl```


ou

```$ cd $HOME/sources/jdk8```


ou

```$ cd $HOME/dev/jdk8```

Então execute os comandos abaixo:

```
$ hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8
$ cd jdk8
```

Efetue o Download do codigo fonte rodando get_source.sh (importante)

```$ chmod u+x get_source.sh```

```$ sh get_source.sh```

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
General [get_source page](https://java.net/projects/adoptopenjdk/pages/GetSource):

* [Linux (Ubuntu/Debian)](https://java.net/projects/adoptopenjdk/pages/GetSource#Debian/Ubuntu)

* [MacOS X](https://java.net/projects/adoptopenjdk/pages/GetSource#Mac_OS_X) <br/>
Nota: Se você estiver usando Mac OS X 10.8.5 com XCode 5 você vai precisar usar o a seguinte [solução](http://mail.openjdk.java.net/pipermail/build-dev/2013-September/010262.html).

* [Windows](https://java.net/projects/adoptopenjdk/pages/GetSource#MS_Windows)<br/>
Em caso de problemas, experimente criar e usar uma VirtualBox [siga as instruções](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKVM).
Efetue o build e continue com o restante das instruções.

Configure o Openjdk setup (Opcional se você ja rodou o comando anteriormente)

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