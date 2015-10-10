# Construire OpenJDK 9

Lien vers une page avec des instructions d�taill�es sur le [wiki Adopt OpenJDK](https://java.net/projects/adoptopenjdk/pages/Build).

Pr�requis : installer les programmes n�cessaires pour construire OpenJDK 9, [voir le site](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKBuild).
Suivez les instructions ci-dessous pour construire OpenJDK 9 � partir des for�ts jdk9 :

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


```/usr/lib/jvm/jdk1.8.0``` - peut �tre diff�rent dans votre cas, veuillez t�l�charger le JDK depuis le [site](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html). Il est recommand� d'utiliser ce JDK car il est mieux test� et sans changement qui pourrait avoir �t� fait sur la copie locale d'OpenJDK 8 (source ou image).

Sur Ubuntu, il est possible d'obtenir le JDK 8 d'Oracle en ajoutant le d�p�t du projet Web Update 8, [voir les instructions](http://tecadmin.net/install-oracle-java-8-jdk-8-ubuntu-via-ppa/).

```
$ bash configure --with-boot-jdk=/usr/lib/jvm/jdk1.8.0```


Si vous avez t�l�charg� une machine virtuelle, utilisez ce chemin :

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

Obtenez la [for�t pour Nashorn](http://hg.openjdk.java.net/jdk9/jdk9/nashorn) pour le JDK 9.
