# Linux/Unix

**Quel est le mot de passe de root pour Ubuntu OS sur ces VMs?**

La réponse à cette question se trouve [sur le forum ask ubuntu](http://askubuntu.com/questions/347818/what-is-the-default-root-password-when-was-never-set-at-installation-time).

**J'ai une erreur freetypefont sous Ubuntu 14.04 quand je lance bash configure ?**
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

Résolution:
bash configure --with-freetype-lib=/usr/lib --with-freetype-include=/usr/include/freetype2

N.B. l'emplacement de freetypefont peut varié, vérifiez en utilisant find ou locate.
```

Vous devrez peut-être également ajouter :
```
--with-freetype=/usr/include/freetype2
```

**J'ai l'erreur ci-dessous sur Ubuntu VM quand je lance ./get_sources.sh ?**

“Need initial clone with ‘hg paths default’ defined”
Tout d'abord, supprimez les répertoires ```jdk8``` ou ```jdk8_tl```, puis lancez les commandes suivantes :

```
sudo apt-get install git-core ;
sudo apt-get install mercurial ;
cd $SOURCE_CODE ;
hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8;
cd jdk8/ ;
chmod u+x get_source.sh ;
./get_source.sh ;
```