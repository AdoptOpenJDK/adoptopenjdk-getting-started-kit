# Compilando a OpenJDK 9

**Buildando no SO nativo (a partir do zero)**

Link para uma página detalhada em [Adopt OpenJDK wiki](https://java.net/projects/adoptopenjdk/pages/Build) [dead-link].

* Pré-requisito: *programas de suporte para buildar a OpenJDK8 foram instalados antes de tentar executar as instruções abaixo,* [ver site](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKBuild) [dead-link]. Siga as instruções abaixo para criar o OpenJDK9 a partir da forrest jdk9:

**Construir a partir de repo existente ou ready-made VM imagem**

```
$ cd $HOME/sources
```
ou
```
$ cd $HOME/dev
```

Se ```jdk9``` or ```jdk9_dev```  não existirem nesta pasta, faça o seguinte:

Construir JDK9 (não Jigsaw)
```
$ hg clone http://hg.openjdk.java.net/jdk9/jdk9 jdk9
```

ou

Buildar Jigsaw JDK

```
$ hg clone http://hg.openjdk.java.net/jigsaw/jake/ jdk9

$ cd jdk9

$ chmod u+x get_source.sh 
$ ./get_source.sh 
```

```
$ bash configure --with-boot-jdk=/usr/lib/jvm/jdk1.8.0 --disable-warnings-as-errors
```

`/usr/lib/jvm/jdk1.8.0` - pode diferir no seu caso, faça o download do JDK 8 pelo menos a partir do site [http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) [dead-link]. **É recomendável usar este JDK pois é melhor testado e livre de quaisquer alterações que você possa ter feito para a cópia local do OpenJDK8 .**

Se você estiver utilizando MacOSX (por exemplo, 10.9.0 ou acima), talvez seja necessário instalar o XQuartz a partir deste [site](http://xquartz.macosforge.org/landing/) e incluir as seguintes opções para executar o bash configure

```
$ bash configure --with-freetype-include=/usr/X11/include/freetype2 \
                --with-freetype-lib=/usr/X11/lib \
                --disable-warnings-as-errors \             
                --with-boot-jdk=/usr/lib/jvm/jdk1.8.0
```

É possível baixar o Oracle JDK 1.8 no Ubuntu adicionando o repositório do projeto Web Update 8, [ver instruções](http://tecadmin.net/install-oracle-java-8-jdk-8-ubuntu-via-ppa/).

Se você baixou a imagem da máquina virtual, use esse caminho:

```
$ bash configure --with-boot-jdk=/usr/lib/jvm/java-8-oracle --disable-warnings-as-errors
```

```
$ make clean images 
```

ou

```
$ make clean images LOG=debug     
                 ## to display DEBUG information 
```

Confira o [Nashorn forrest](http://hg.openjdk.java.net/jdk9/jdk9/nashorn) para JDK9.

Para compilar a OpenJDK com os avisos de compilação ativados, consulte a seção [Limpar avisos de compilação](../intermediate-steps/cleaning_up_build_warnings.md).