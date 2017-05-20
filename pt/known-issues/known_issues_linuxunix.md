# Linux/Unix

**Qual é o root password nas maquinas Ubuntu OS?**

A resposta para esta pergunta pode ser encontrada em [nesse link](http://askubuntu.com/questions/347818/what-is-the-default-root-password-when-was-never-set-at-installation-time).

**Estou com problemas no freetypefont, vejo erros, estou usando Ubuntu 14.04**
```text
.
.
.
checking for cups/ppd.h... yes
configure: error: Could not find freetype! You might be able to fix this by running 'sudo apt-get install libfreetype6-dev'. 
configure exiting with result code 1

(root@ip-10-153-135-250:~/jdk8# freetype-config --libs
-L/usr/lib/x86_64-linux-gnu -lfreetype -lz -lpng12)

root@ip-10-153-135-250:~/jdk8# lsb_release -a
No LSB modules are available.
Distributor ID:	Ubuntu
Description:	Ubuntu 14.04.1 LTS
Release:	14.04

Solução:
```
bash configure --with-freetype-lib=/usr/lib --with-freetype-include=/usr/include/freetype2
```

A localização do freetypefont pode variar, verifique a localização correta usando o find ou manualmente locate before antes de rodar o comando recomendado.
```

Rode também o comando abaixo, caso o comando acima não resolva o problema:
```
--with-freetype=/usr/include/freetype2
```

**Estou tendo problemas quando executo ./get_sources.sh na Ubuntu VM, o que fazer ?**

“Need initial clone with ‘hg paths default’ defined”
Primeiramente, remova o diretorio ```jdk8``` ou ```jdk8_tl```, e em seguida execute os comandos abaixo:

```
sudo apt-get install git-core ;
sudo apt-get install mercurial ;
cd $SOURCE_CODE ;
hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8;
cd jdk8/ ;
chmod u+x get_source.sh ;
./get_source.sh ;
```