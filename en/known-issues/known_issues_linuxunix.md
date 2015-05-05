# Linux/Unix

**What is the root password to the Ubuntu OS on these VMs?**

The answer to this question can be found [at the link](http://askubuntu.com/questions/347818/what-is-the-default-root-password-when-was-never-set-at-installation-time).

**I get a freetypefont error under Ubuntu 14.04 when I run bash configure ?**
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

Resolution:
bash configure --with-freetype-lib=/usr/lib --with-freetype-include=/usr/include/freetype2

Please note the location of freetypefont may vary, please find out using find or locate before applying.
```

Additionally you may need to add:
```
--with-freetype=/usr/include/freetype2
```

**I get the below error in the Ubuntu VM when I run ./get_sources.sh ?**

“Need initial clone with ‘hg paths default’ defined”
Firstly remove the ```jdk8``` or ```jdk8_tl``` folder, following that please run the below commands:

```
sudo apt-get install git-core ;
sudo apt-get install mercurial ;
cd $SOURCE_CODE ;
hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8;
cd jdk8/ ;
chmod u+x get_source.sh ;
./get_source.sh ;
```