# Como usar o JTReg… - Java Regression Test Harness

* [Preparações](preparations.md)
* [Problems.txt](advanced-steps/problems.txt.md)
* [Exemplos de anotações no header de arquivos de teste](advanced-steps/test-annotations.md)
---

Execute os comandos ```make``` para rodar testes em componentens individuais:
```
$ cd $HOME/sources/jdk8_tl/test
 
$ make jdk_core      &> openJDK_jdk_core_Test_Results.logs
$ make jdk_default   &> openJDK_jdk_default_Test_Results.logs 
$ make jdk_all       &> openJDK_jdk_all_Test_Results.logs
```

(O ambiente necessario e variaveis que precisam estar exportadas antes de executar o ```make test``` pode ser encontradas em [link](https://java.net/projects/adoptopenjdk/pages/InstallJtreg#Running_tests_via_the_CLI).

* Pre-requisitos:<br/>
1) ```TEST.ROOT``` deve existir no diretorio em que os comandos abaixo serão executados<br/>
2) jdk images deve estar criado (para cria-lo execute o comando ```make images``` ou ```make clean images```)<br/>

* Problemas conhecidos: <br/>
“Impossivel determinar a versão do java”, solução: ```unset JT_JAVA in .bashrc```

Metodo 1, rode o ```jtreg``` no CLI
```
$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:fail -jdk: <jdk8-path> $1
```

Metodo 2, rode ```jtreg``` no CLI
```
$ $HOME/jtreg/linux/bin/jtreg -verbose:fail -jdk: <jdk8-path> $1
```

```jdk8-path``` - o mesmo que ```$PRODUCT_HOME```  (exemplo ```$SOURCE_CODE/jdk8/build/macosx-x64-normal-server-release/images/j2sdk-image```, pode variar de acordo com seu sistema operacional)

Re-escreva ```$1``` por um arquivo ou diretorio, alguns exemplos abaixo:

```
$ cd $SOURCE_CODE/jdk8_tl/jdk/test

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ ./ 

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ javax
(este comando ira rodar todos os tests localizados em jdk/test/javax sub-folder)

$ $HOME/jtreg/linux/bin/jtreg -verbose:all -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ java/lang/invoke/AccessControlTest.java
```
(Este comando ira rodar todos os testes no diretorio e incluira as classes acima mencionadas)

The results can be found in the ```JTreport``` and ```JTwork``` folders.

<br/>
**/test/ folders in the $HOME/sources/jdk8 or $HOME/sources/jdk9 tree**

Execute os comandos abaixo para descobrir 5 repositorios ou packages que contenham arquivos test.
Estes arquivos do tipo ```jtreg``` ,poderao ser executados com ```make test``` ou entao ```jtreg``` CLI or binary file commands:

```
$ tree -fL 5 | grep "/test/" | more
```

Imprime os resultados:
```
./hotspot/test
./jdk/test
./langtools/test
./nashorn/test
./test/
```

Existe muito para aprender executando testes e observando o comportamento do OpenJDK.