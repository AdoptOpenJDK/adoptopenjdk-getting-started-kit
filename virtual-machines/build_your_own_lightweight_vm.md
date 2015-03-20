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

On a slow home broadband from zero to full build of OpenJDK 9 can take an hou (machine spec: Using a MacBookPro 2013 with 16GB and SSD)

## Boot Vagrant VM
The vagrant setup is configured to use the official Ubuntu 14.10 64bit vagrant box provided by Ubuntu. So not a specially customised preconfigured vm. The main reason to this as the base, it that it's up to date, has an proven and tested openjdk-8 installation so no need to built it yourself.

**Before starting feel free to edit the Vagrantfile if your machine has more than 1 cpu and 512MB avaliable. When developing I used 2 cpus and 2048 memory. On 1st boot it will automatically download the vm image which is roughly 350MB. **

```
  $ vagrant up
  $ vagrant ssh
```

##### Troubleshooting
If the virtual machine boots but you see apt errors. Try logging in aka <code>vagrant ssh</code> and then execute <code>$ sudo /vagrant/scripts/aptget-deps.sh</code>. This is the main reason it's a seperate script so can be manually re-executed if required.

Windows users will need to skip <code>vagrant ssh</code> and once the vm has booted scan the output to see what port it being used for ssh and use putty to login.

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