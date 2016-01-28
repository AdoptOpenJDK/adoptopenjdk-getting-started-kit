# Construire jcov

Page du project (infos, instruction de build, etc…) <br/>
https://wiki.openjdk.java.net/display/CodeTools/jcov

Code source : <br/>
http://hg.openjdk.java.net/code-tools/jcov

Téléchargez les artéfacts depuis le [site d'intégration continue d'Adopt OpenJDK](https://adopt-openjdk.ci.cloudbees.com/job/jcov/lastSuccessfulBuild/artifact/).

Instruction de build simplifiées

```
$ hg clone http://hg.openjdk.java.net/code-tools/jcov
$ cd jcov/build
$ ant clean
$ ant -v -f build.xml -Dasmjar5=/path/to/asm-all-5.0.1.jar -Djavatestjar=/path/to/javatest.jar 
```

```asm``` peut être téléchargé depuis http://download.forge.ow2.org/asm/asm-5.0.1-bin.zip

```jtharness``` peut être téléchargé depuis   https://adopt-openjdk.ci.cloudbees.com/job/jtharness/lastSuccessfulBuild/artifact/

Veuillez vous référer à la page du projet pour les instructions de build, etc… quand elles seront disponible, alors les instructions ci-dessus seront supprimées pour éviter la duplication.

Voir également [Couverture de code d'OpenJDK](openjdk_code_coverage.md).