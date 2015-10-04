# Construire OpenJDK 9

Lien vers une page avec des instructions détaillées sur le [wiki Adopt OpenJDK](https://java.net/projects/adoptopenjdk/pages/Build).

Prérequis : installer les programmes nécessaires pour construire OpenJDK 9, [voir le site](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKBuild).
Suivez les instructions ci-dessous pour construire OpenJDK 9 à partir des forêts jdk9 :

```
$ cd $HOME/sources```


ou 

```
$ cd $HOME/dev
```

```
$ hg clone http://hg.openjdk.java.net/jdk9/jdk9 jdk9

$ cd jdk9

$ chmod u+x get_source.sh 
$ ./get_source.sh 
```


```/usr/lib/jvm/jdk1.8.0``` - peut être différent dans votre cas, veuillez télécharger le JDK depuis le [site](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html). Il est recommandé d'utiliser ce JDK car il est mieux testé et sans changement qui pourrait avoir été fait sur la copie locale d'OpenJDK 8 (source ou image).

Sur Ubuntu, il est possible d'obtenir le JDK 8 d'Oracle en ajoutant le dépôt du projet Web Update 8, [voir les instructions](http://tecadmin.net/install-oracle-java-8-jdk-8-ubuntu-via-ppa/).

```
$ bash configure --with-boot-jdk=/usr/lib/jvm/jdk1.8.0```


Si vous avez téléchargé une machine virtuelle, utilisez ce chemin :

```
$ bash configure --with-boot-jdk=/usr/lib/jvm/java-8-oracle
```


```
$ make clean  ```
puis
```
$ make images ```


ou 

```
$ make clean LOG=debug     
$ make images LOG=debug     
                 ## pour afficher les informations de DEBUG
```

Obtenez la [forêt pour Nashorn](http://hg.openjdk.java.net/jdk9/jdk9/nashorn) pour le JDK 9.
