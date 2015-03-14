# Linux/Unix

[section covering existing known issues when setting up or using the VM, OpenJDK build, etc...]

On Windows platform, when I start my VM in VirtualBox, VirtualBox throws an error Error: “amd-v is disabled in bios”

Go to BIOS setting by restarting and enable Virtualization Technology Under the Menu option called System Configuration.

On Windows VM host, the Ubuntu guest is not connected to the internet

Go to network connections -> Virtual Box Host Only connection -> Select "Properties" -> Check VirtualBox Bridged Networking Driver.

Now, internet on guest should work.

http://stackoverflow.com/questions/35375/internet-access-in-ubuntu-on-virtualbox

What is the root password to the Ubuntu OS on these VMs?
http://askubuntu.com/questions/347818/what-is-the-default-root-password-when-was-never-set-at-installation-time

I get a freetypefont error under Ubuntu 14.04 when I run bash configure ?
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

Additionally you may need to add:
```
--with-freetype=/usr/include/freetype2
```
How do I change the disk size of the VDIs on the VMs?
Recommended link shared with the community by Richard Greenlees: http://bit.ly/1qgfZJ7
http://www.howtogeek.com/124622/how-to-enlarge-a-virtual-machines-disk-in-virtualbox-or-vmware/
https://forums.virtualbox.org/viewtopic.php?t=10348

I get the below error in the Ubuntu VM when I run ./get_sources.sh ?
“Need initial clone with ‘hg paths default’ defined”
Firstly remove the jdk8 or jdk8_tl folder, following that please run the below commands:


sudo apt-get install git-core ;
sudo apt-get install mercurial ;
cd $SOURCE_CODE ;
hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8;
cd jdk8/ ;
chmod u+x get_source.sh ;
./get_source.sh ;

My VM disk is full since I installed xxx / have been building yyyy? What do I do?
The ‘build’ folder in jdk8_tl and jdk9 take up a lot of disk space - sometimes upto 3GB, and if not required after building it, can be removed. In the beginning when learning about the system, you won’t need both jdk8 and jdk9 built. 

If you still need more disk space, use the above solution to increase the size of the disk.

My OpenJDK8 does not build, why? I get an “Http: Error 404: Not Found”.

There has been a change to the address to mercurial repo for openjdk8, its changed from

http://hg.openjdk.java.net/jdk8/tl

to 

http://hg.openjdk.java.net/jdk8/jdk8

jdk8 Updates are available from 
http://hg.openjdk.java.net/jdk8u/jdk8u

All hg clone commands should use the latter address, a solution to the problem can be found below under Download source by running... (#heading=h.fuqz6rlsthji).

I’m unable to select Rules of Compliance in Treemaps in SonarQube?

This option has been removed from the drop-down menu but apply the below SQL to update the table and refresh the treemap, the Color Metric will be mapped to RCI (called violation_density):

update widget_properties set text_value = 'violations_density' where kee= 'colorMetric’

In SonarQube 4.5.1, the Violations Density metric is not shown. We could use the SQALE Rating, which is another way to measure code quality - http://www.sonarqube.org/sqale-the-ultimate-quality-model-to-assess-technical-debt/ 

I get an “HTTP Error 404: Not Found” when downloading sources  (when I run ./get_sources.sh) for the various repos

Fix 1

Edit all the .hg/hgrc file in the root repo ($HOME/SOURCE/jdk8_tl) along with those in repos hotspot, jaxws, jaxp, corba, nashorn, jdk, langtools, and change all references to .../tl/... to .../jdk8/… For example, change the below setting,

default = http://hg.openjdk.java.net/jdk8/tl/hotspot

to 

default = http://hg.openjdk.java.net/jdk8/jdk8/hotspot

in the hotspot repo, and save the file. Rename the jdk8_tl folder to jdk8:

$ cd ..
$ mv jdk8_tl jdk8

- or -

Fix 2
$ cd ..

$ mv jdk8_tl jdk8_tl_backup

$ hg clone http://hg.openjdk.java.net/jdk8/jdk8

$ cd jdk8

$ chmod u+x get_source.sh

$ ./get_source.sh

$ bash configure

When the above steps work, remove the backup folder with

$ rm -fr jdk8_tl_backup

All references to jdk8_tl will change to jdk8. 