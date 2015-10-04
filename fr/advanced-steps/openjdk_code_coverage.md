# Couverture de code d'OpenJDK

Voici la tentative d'Adopt OpenJDK à de la [couverture de code](https://java.net/projects/adoptopenjdk/pages/Codecoverage).

**Rapport de couverture existants (OpenJDK8 et OpenJDK9)**
Récemment nous avons activé la couverture de code sur notre ferme de build Adopt OpenJDK faisant tourné des build d'intégration continue d'OpenJDK8 et OpenJDK9, publiant des rapport jcov pour [OpenJDK8](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/openjdk-1.8-linux-x86_64/ws/testoutput/jdk_core/JTreport/jcov/index.html) et [OpenJDK9](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/openjdk-1.9-linux-x86_64/ws/testoutput/jdk_core/JTreport/jcov/index.html) respectivement.

**Lancew les tests d'OpenJDK9 avec la couverture de code activée**

---
Notes: 
* les étapes sont similaires pour 'OpenJDK8'. 
* ces paramétrages sont pour la création de rapports de couverture pour la repo 'jdk' uniquement
* nous ne somme parvenu à en produire pour 'langtools'
---
* Assurez vous d'avoir les dernière images de ```jdk``` de construite dans le dossier tge d' ```OpenJDK9``` (voir [Consntruire votre propre OpenJDK](../binaries/build_your_own_openjdk.md)).

* Installez ```jtreg avec jcov```, voir [Utilisation de JTReg... > Préparations](../intermediate-steps/preparations.md).

* Ajoutez ces exports à votre profile ```.bash_xxx``` :

```
export SOURCE_CODE=/home/<username>/workspace/jdk9/
export JTREG_INSTALL=/home/<username>/workspace/jtreg
export JT_HOME=$JTREG_INSTALL
export JTREG_HOME=$JTREG_INSTALL
export PRODUCT_HOME=$SOURCE_CODE/build/linux-x86_64-normal-server-release/images/jdk 
export JPRT_JTREG_HOME=${JT_HOME}
export JPRT_JAVA_HOME=${PRODUCT_HOME}
export JTREG_TIMEOUT_FACTOR=5
export CONCURRENCY=8
```
```
$ cd $SOURCES/jdk9/jdk/test
```

* Ouvrez ```Makefile``` et ajoutez ce qui suit, juste avant la ligne ```# Make sure jtreg exists``` :

```
jdkroot=<hardcoded path to your jdk9, see above>

JTREG_TEST_OPTIONS += -jcov/classes:$(jdkroot)/build/linux-x86_64-normal-server-release/jdk/modules/java.base
JTREG_TEST_OPTIONS += -jcov/source:$(jdkroot)/jdk/src/java.base/share/classes
JTREG_TEST_OPTIONS += -jcov/include:*
```

* Lancez le test en debug
```
$ cd ..
$ make test LOG=debug
```

* Ouvrez le rapport

Une fois terminé, regardez le rapport à l'emplacement ci-dessous :

```
$ cd $SOURCES/jdk9/build/linux-x86_64-normal-server-release/testoutput/jdk_core/JTreport/jcov/
$ open index.html
```

Ceci devrait prendre quelques heures en fonction des resources disponibles et des performances de votre système.

Voir également [Construire jcov](building_jcov.md).