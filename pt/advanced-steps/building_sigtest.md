# Efetuando o Build do sigtest

Página do projeto (project info, instruções de build, etc…)
https://wiki.openjdk.java.net/display/CodeTools/sigtest

codigo fonte: <br/>
http://hg.openjdk.java.net/code-tools/sigtest

Efetue o build rápido seguindo as intruções abaixo:

<br/>
```
$ svn checkout https://svn.java.net/svn/sigtest~svn/trunk

$ cd code/build

$ ant build -Djdk5.home=/path/to/jdk1.5.latest \
-Djdk8.home=/path/to/jdk8.latest \
-Dmvn2.exe=/path/to/latest/bin/mvn
```
*Nota: Estas instuções acima serão removidas assim que a referencia oficial seja atualizada.
