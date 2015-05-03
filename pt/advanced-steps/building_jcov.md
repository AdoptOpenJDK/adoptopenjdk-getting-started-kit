# Building jcov

Pagina do Projeto (project info, instuções de build, etc…) <br/>
https://wiki.openjdk.java.net/display/CodeTools/jcov

codigo fonte: <br/>
http://hg.openjdk.java.net/code-tools/jcov

Efetue o Download ods arquivos binarios no jenkins do [Adopt OpenJDK CI site](https://adopt-openjdk.ci.cloudbees.com/job/jcov/lastSuccessfulBuild/artifact/).

Efetue o build rápido seguindo as intruções abaixo:

```
$ hg clone http://hg.openjdk.java.net/code-tools/jcov
$ cd jcov/build
$ ant clean
$ ant -v -f build.xml -Dasmjar5=/path/to/asm-all-5.0.1.jar -Djavatestjar=/path/to/javatest.jar 
```

```asm``` pode ser encontrado em http://download.forge.ow2.org/asm/asm-5.0.1-bin.zip

```jtharness``` pode ser encontrado em https://adopt-openjdk.ci.cloudbees.com/job/jtharness/lastSuccessfulBuild/artifact/

*Nota: Estas instuções acima serão removidas assim que a referencia oficial seja atualizada.

Veja também [OpenJDK Code Coverage](openjdk_code_coverage.md).