# OpenJDK Code coverage

Veja o Adopt OpenJDK’s jab [code-coverage](https://web.archive.org/web/20170401123125/https://java.net/projects/adoptopenjdk/pages/Codecoverage).

**Coverage Report para o OpenJDK8 e OpenJDK9**
Recentemente nós habilitamos o code coverage no Adopt OpenJDK farms rodando um CI build do OpenJDK8 e OpenJDK9, publicando jcon reports para [OpenJDK8](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/openjdk-1.8-linux-x86_64/ws/testoutput/jdk_core/JTreport/jcov/index.html) e [OpenJDK9](https://adopt-openjdk.ci.cloudbees.com/view/OpenJDK/job/openjdk-1.9-linux-x86_64/ws/testoutput/jdk_core/JTreport/jcov/index.html) [dead-link] Respectivamente.

**Rodando tests de code-coverage habilitados para o OpenJDK9**

---
Notas:
* Passos similares podem ser usados para o 'OpenJDK8' igualmente.
* Estes settings são para gerar coverage do 'jdk' repo somente.
* não foi possivel produzir um para o 'langtools'
---
* Confirme que sua instalação esta correnta e que contém as últimas ```jdk``` images na pasta de build do tge ```OpenJDK9``` (veja [Faça o Build do seu proprio OpenJDK](binaries/build_your_own_openjdk.md)).

* Instale ```jtreg com o jcov```, veja [Como usar JTReg... > Preparações](advanced-steps/preparations.md).

* Aplique estes exports em seu bash ```.bash_xxx``` profile:

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

* Edite o ```Makefile``` e adicione o seguinte após a linha  ```# tenha certeza que jtreg existe```:

```
jdkroot=<hardcoded path to your jdk9, see above>

JTREG_TEST_OPTIONS += -jcov/classes:$(jdkroot)/build/linux-x86_64-normal-server-release/jdk/modules/java.base
JTREG_TEST_OPTIONS += -jcov/source:$(jdkroot)/jdk/src/java.base/share/classes
JTREG_TEST_OPTIONS += -jcov/include:*
```

* Rode os testes em debug mode
```
$ cd ..
$ make test LOG=debug
```

* Abrir o report de coverage gerados

Uma vez que o comando esteja concluido, os reports devem ser gerados em:

```
$ cd $SOURCES/jdk9/build/linux-x86_64-normal-server-release/testoutput/jdk_core/JTreport/jcov/
$ open index.html
```

Este processo pode levar algumas horas dependendo das configuracoes e quão performático é o seu sistema.

Veja também [Building jcov](building_jcov.md).