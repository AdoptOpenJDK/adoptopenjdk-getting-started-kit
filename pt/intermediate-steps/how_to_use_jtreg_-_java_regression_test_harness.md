# Como usar JTReg ... - Teste de regressão Java.

 * [Preparação](preparations.md)
 * [Problems.txt](problems.txt.md)
 * [Exemplos de anotações no cabeçalho dos arquivos de teste](test-annotations.md)
---
##### O que é o JTReg?

JTReg significa Java Test Regression suite, veja também http://openjdk.java.net/jtreg/.

##### Como usar o JTReg?
Experimente os comandos ```make``` abaixo para executar testes nos componentes individuais:
```
$ cd $HOME/sources/jdk8_tl/test
 
$ make jdk_core      &> openJDK_jdk_core_Test_Results.logs
$ make jdk_default   &> openJDK_jdk_default_Test_Results.logs 
$ make jdk_all       &> openJDK_jdk_all_Test_Results.logs
```

(As variáveis ​​de ambiente necessárias precisam estar configuradas antes do comando ```make test``` ser executado e funcionar nos componentes acima, para uma lista maior veja [link](https://java.net/projects/adoptopenjdk/pages/InstallJtreg#Running_tests_via_the_CLI) [dead-link].

* Pré-requisitos: <br/>
1) ```TEST.ROOT``` deve existir na pasta onde os comandos abaixo serão executados <br/>
2) as imagens jdk devem estar presentes como resultado do comando ```make images``` ou ```make clean images``` <br/>

* Problema conhecido: <br/>
"Não é possível determinar a versão do java", solução: ```unset JT_JAVA in .bashrc```

Método 1 para executar ```jtreg``` a partir do CLI
```
$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:fail -jdk: <jdk8-path> $1
```

Método 2 para executar ```jtreg``` a partir do CLI
```
$ $HOME/jtreg/linux/bin/jtreg -verbose:fail -jdk: <jdk8-path> $1
```

```Jdk8-path``` - mesmo que ```$ PRODUCT_HOME``` (por exemplo, ```$SOURCE_CODE/jdk8/build/macosx-x64-normal-server-release/images/j2sdk-image```, Isto pode diferir em seu sistema)

Substitua o ```$ 1``` por um arquivo ou nome de pasta, abaixo estão alguns exemplos:

```
$ cd $SOURCE_CODE/jdk8_tl/jdk/test

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ ./ 

$ java -jar $HOME/jtreg/lib/jtreg.jar -verbose:all  -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ javax
(the above will run all the tests in the jdk/test/javax sub-folder)

$ $HOME/jtreg/linux/bin/jtreg -verbose:all -jdk:$HOME/sources/jdk8_tl/build/linux-x86_64-normal-server-release/images/j2sdk-image/ java/lang/invoke/AccessControlTest.java
```

(O acima irá executar todos os testes na classe de teste acima mencionado)

Os resultados podem ser encontrados nas pastas ```JTreport``` e ```JTwork```.

<br/>
**/test/ folders in the $HOME/sources/jdk8 or $HOME/sources/jdk9 tree**

Execute o comando abaixo para descobrir os repos ou pacotes que têm uma pasta de teste nele, portanto, suporta ```jtreg``` testes, o que significa que você pode ir para essas pastas e executar ```make test``` ou ```jtreg``` ou comandos de arquivo binário para executar os respectivos testes:

```
$ tree -fL 5 | grep "/test/" | more
```

Nossa pesquisa retornou o seguinte:
```
./hotspot/test
./jdk/test
./langtools/test
./nashorn/test
./test/
```

Por exemplo cd em
``` $SOURCES/dev/jdk9/jdk/test  or  $SOURCES/dev/jdk9/hotspot/test ```
Em seguida, execute: jtreg -verbose:arg .

Para executar testes individuais, especifique uma subpasta como o argumento para jtreg ou navegue até essa subpasta antes de executar jtreg.

Há muito o que aprender sobre OpenJDK, portanto, olhamos para os testes para entender o código.