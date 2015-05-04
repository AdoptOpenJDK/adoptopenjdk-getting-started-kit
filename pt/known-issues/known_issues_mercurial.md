# Mercurial

**Meu OpenJDK8 nao conclue o download das sources, porque? Estou recebendo um erro “Http: Error 404: Not Found”.**

O repo do OpenJDK mudou, verifique que a url que esta sendo usada esta correta.

Era:
http://hg.openjdk.java.net/jdk8/tl

Mudou para
http://hg.openjdk.java.net/jdk8/jdk8

Atualizações do jdk8 estã disponiveis no usando o link
http://hg.openjdk.java.net/jdk8u/jdk8u

Todos os comandos hg clone devem usar os links mais atuais.


**Meu OpenJDK8 clone retorna “HTTP Error 404: Not Found” quando executo  ./get_sources.sh, porque?**

*Fix 1*

Edite todos os arquivos dentro de .hg/hgrc localizados em ($HOME/SOURCE/jdk8_tl) incluindo hotspot, jaxws, jaxp, corba, nashorn, jdk, langtools, e mude todas as referencias de .../tl/... para .../jdk8/… Por exemplo:

```
default = http://hg.openjdk.java.net/jdk8/tl/hotspot
```
para
```
default = http://hg.openjdk.java.net/jdk8/jdk8/hotspot
```
dentro do hotspot repo salvando em seguida. Renomeie o diretorio jdk8_tl  para jdk8:

```
$ cd ..
$ mv jdk8_tl jdk8
```

- or -

*Fix 2*
```
$ cd ..

$ mv jdk8_tl jdk8_tl_backup

$ hg clone http://hg.openjdk.java.net/jdk8/jdk8

$ cd jdk8

$ chmod u+x get_source.sh

$ ./get_source.sh

$ bash configure
```
Ao finalizar a execução dos comandos, remova o diretorio de backup:

```
$ rm -fr jdk8_tl_backup
```

Todas as referencias a jdk8_tl devem ser renomeadas para jdk8.