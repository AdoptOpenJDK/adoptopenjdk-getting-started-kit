# MacOS

** Porque a configuração falha quando freetype não é encontrado? **

```configure: error: Could not find freetype!  
configure exiting with result code 1```

<br/>
** Quando tentamos instalar o freetype nós percebemos que o mesmo já estava instalado**

```
$ brew install freetype
Error: freetype-2.5.3_1 already installed
```

Para instalar essa versão primeiramente:
```brew unlink freetype```

*Solução: desde que já esteja instalado a configuração se dá dessa maneira*

```
$ bash configure –with-freetype-include=/usr/X11/include/freetype2 –with-freetype-lib=/usr/X11/lib
```
Uma nova configuração foi criada em
```
[OpenJDK sourcesfolder]/jdk9/build/macosx-x86_64-normal-server-release
```
utilizando argumentos para a configuração

```
–with-freetype-include=/usr/X11/include/freetype2 –with-freetype-lib=/usr/X11/lib

