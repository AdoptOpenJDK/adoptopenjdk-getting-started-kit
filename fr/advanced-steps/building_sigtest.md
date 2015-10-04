# Construire sigtest

Page du project (infos, instruction de build, etc…) <br/>
https://wiki.openjdk.java.net/display/CodeTools/sigtest

Code source : <br/>
http://hg.openjdk.java.net/code-tools/sigtest

Instruction de build simplifiées
```
$ svn checkout https://svn.java.net/svn/sigtest~svn/trunk

$ cd code/build

$ ant build -Djdk5.home=/path/to/jdk1.5.latest \
-Djdk8.home=/path/to/jdk8.latest \
-Dmvn2.exe=/path/to/latest/bin/mvn
```
Veuillez vous référer à la page du projet pour les instructions de build, etc… quand elles seront disponible, alors les instructions ci-dessus seront supprimées pour éviter la duplication.
