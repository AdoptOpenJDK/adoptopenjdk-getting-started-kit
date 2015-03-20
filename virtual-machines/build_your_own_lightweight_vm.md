# Build your own light-weight VM

A simplifying and standard virtual machine used for building OpenJDK.

### Quick Start
The sections in this document are below, all the bullet points are steps required, all **bold** sections provided more information or optional configuration. **Any reference to $ is a comment line argument to be executed within a vagrant vm. **

  - Install Virtual Box, Vagrant & Git
  - Boot Vagrant VM
  - Initial Vagrant VM setup
  - OpenJDK 9 Build

## Install Virtual Box, Vagrant & Git
Install the software, initially created and tested on a Mac and the versions used as of 2015/01/18 are;
  - Virtual Box v4.3.20 (https://www.virtualbox.org/wiki/Downloads)
  - Vagrant v1.7.1 (https://www.vagrantup.com/downloads.html)
  - Git v2.2.2 (http://git-scm.com/downloads)

## Download VM from cloud repository
Once vagrant is installed please execute the following command line, it's 377MB so please download beforehand to save time on the day;

```vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box";```

On a slow home broadband from zero to full build of OpenJDK 9 can take an hour (machine spec: Using a MacBookPro 2013 with 16GB and SSD)

Load up VirtualBox and start up the machine.

##### Initial Vagrant VM setup
Once the vm has booted and dependencies have been installed the next script will download the latest version of jdk9, if already cloned it will update so multiple execute is handled.

```
  $ vagrant ssh
  $ /vagrant/scripts/source.sh
```

##### OpenJDK 9 Build

```
  $ vagrant ssh
  $ cd ~/source/jdk9 ;
  $ bash get_source.sh ;
  $ bash configure ;
  $ make clean images ;
```  
 
  $ make test ;