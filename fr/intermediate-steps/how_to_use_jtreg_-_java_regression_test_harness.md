# Utilisation de JTReg… - Java Regression Test Harness ?
 * [Préparations](intermediate-steps/preparations.md)
 * [Problems.txt](problems.txt.md)
 * [Exemples d'annotations dans l'entête des fichiers de test](test-annotations.md)
---
##### Qu'est ce que JTReg ?

JTReg correspond à Java Regression Test (suite), voir également http://openjdk.java.net/jtreg/.

##### Comment utiliser JTReg ?
Essayez les commandes ```make``` ci-dessous pour lancer des tests sur des composants individuels :
```
$ cd $HOME/sources/jdk8_tl/test
 
$ make jdk_core      &> openJDK_jdk_core_Test_Results.logs
$ make jdk_default   &> openJDK_jdk_default_Test_Results.logs 
$ make jdk_all       &> openJDK_jdk_all_Test_Results.logs
```

(les variables d'environement nécessaires doivent être définies avant, pour que la commande ```make test``` fonctionne, pour une liste étendue voyez le [lien](https://java.net/projects/adoptopenjdk/pages/InstallJtreg#Running_tests_via_the_CLI).

* Pré-requis:<br/>
1) ```TEST.ROOT``` doit exister dans le répertoire où les commandes ci-dessous seront lancées<br/>
2) les images du jdk résultantes de ```make images``` doivent être présentes<br/>

* Problème connu : <br/>
“Cannot determine the version of java”, solution: ```supprimez JT_JAVA dans .bashrc```

Méthode 1 pour lancer ```jtreg``` depuis la ligne de commande :
```
$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:fail -jdk: <jdk8-path> $1
```

Méthode 2 pour lancer ```jtreg``` depuis la ligne de commande :
```
$ $HOME/jtreg/linux/bin/jtreg -verbose:fail -jdk: <jdk8-path> $1
```

```jdk8-path``` - comme ```$PRODUCT_HOME```  (par exemple ```$SOURCE_CODE/jdk8/build/macosx-x64-normal-server-release/images/j2sdk-image```, cela peut être différent sur votre système)

Remplacez le ```$1``` par un nom de fichier ou de répertoire, ci-desous quelques exemples :

```
$ cd $SOURCE_CODE/jdk8_tl/jdk/test

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ ./ 

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ javax
(cette ligne lancera tous les tests dans le sous-répertoire jdk/test/javax)

$ $HOME/jtreg/linux/bin/jtreg -verbose:all -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ java/lang/invoke/AccessControlTest.java
```
(cette ligne lancera tous les tests dans la classe donnée)

Les résultats sont dans les répertoires ```JTreport``` et ```JTwork```.

<br/>
**les répertoires /test/ dans les arbres $HOME/sources/jdk8 ou $HOME/sources/jdk9**

Lancez la ligne ci-dessous pour trouver les repos ou packages ayant un répertoire test et qui donc supportent ```jtreg``` tests, c'est-à-dire que vous pouvez aller dans ces repertoires et lancer ```make test``` ou la ligne de commande ```jtreg``` ou des binaires pour lancer les tests respectifs :

```
$ tree -fL 5 | grep "/test/" | more
```

La recherche a donné :
```
./hotspot/test
./jdk/test
./langtools/test
./nashorn/test
./test/
```

Allez par exemple dans 
``` $SOURCES/dev/jdk9/jdk/test  ou  $SOURCES/dev/jdk9/hotspot/test ```
Puis lancez :  jtreg -verbose:arg .

Pour lancer des tests individuels, spécifiez un sous répertoire comme argument à jtreg, ou lancez depuis ce sous répertoire.

Il y a beaucoup à apprendre à propos d'OpenJDK c'est pourquoi nous regardons les tests pour apprendre le code derrière...
