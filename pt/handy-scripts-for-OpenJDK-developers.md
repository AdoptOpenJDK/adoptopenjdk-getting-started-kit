# Canivete suiço de scripts para desenvolvedores do OpenJDK

**Scripts para atualizar, fazer o build e rodar testes**

Scripts Bash scripts que ajudam sua vida a ser mais facil
```updateAndCleanBuildOpenJDK.sh``` - rode este sempre que deseje efetuar um clean seguido de build

```bash
./get_source.sh
bash configure
make clean images
```

```updateCleanBuildAndTestOpenJDK.sh``` - - rode este sempre que deseje efetuar um clean seguido de build e teste

```bash
./get_source.sh
bash configure
make clean images
make test```


```updateAndBuildOpenJDK.sh``` - rode este comando para um build incremental

```bash
./get_source.sh
bash configure
make images```


```updateBuildAndTestOpenJDK.sh``` - rode este comando para um build incremental seguido de testes

```bash
./get_source.sh
bash configure
make images
make test```

<br/>
__Exemplo simples de mudancaa no openjdk code-base e escrevendo um cliente que use as mudancas__

```buildAndRunTheChangedRandom.sh``` -  rode este comando apos efetuar mudancas no arquivo ChangeRandom.java

```bash
##### OpenJDK8
IMAGES_FOLDER=$SOURCES/jdk8/build/linux-x86_64-normal-server-release/images
$IMAGES_FOLDER/j2sdk-image/bin/javac ChangeRandom.java
$IMAGES_FOLDER/j2re-image/bin/java ChangeRandom
```

```bash
##### OpenJDK9
IMAGES_FOLDER=$SOURCES/jdk9/build/linux-x86_64-normal-server-release/images

$IMAGES_FOLDER/jdk/bin/javac -version
$IMAGES_FOLDER/jdk/bin/javac ChangeRandom.java
$IMAGES_FOLDER/jdk/bin/javap -verbose ChangeRandom | grep "major"
$IMAGES_FOLDER/jdk/bin/javap -verbose ChangeRandom | grep "minor"

$IMAGES_FOLDER/jre/bin/java -version
$IMAGES_FOLDER/jre/bin/java ChangeRandom
```

<br/>
**Rodando JTREG**

```runJtregViaExecutable.sh``` - run JTREG via the $JTREG/bin/jtreg command

```
$HOME/jtreg/linux/bin/jtreg -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ $1
```

```runJtregViaTheJarFile.sh``` - run JTREG via the $JTREG/lib/jtreg.jar command

```
java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ $1```