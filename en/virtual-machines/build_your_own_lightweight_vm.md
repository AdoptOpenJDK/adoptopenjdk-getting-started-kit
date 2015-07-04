# Build your own light-weight VM

A simplifying and standard virtual machine used for building OpenJDK.


### Quick Start

Please download and install the latest version of *Vagrant 1.7.2 or higher* from https://www.vagrantup.com/downloads.html.

Then execute the following command line:

```
# Clone the adopt-openjdk-kiss-vagrant repo
$ git clone https://github.com/neomatrix369/adopt-openjdk-kiss-vagrant.git

# Change to a folder to create the Vagrantfile
$ cd adopt-openjdk-kiss-vagrant.git
$ vagrant init

# Start up the machine
$ vagrant up

# ssh into the VM
$ vagrant ssh

# in the ssh shell
# Mapping in place: /vagrant/scripts/ ==> [currentfolder]/scripts
```

Have a look at the folders and scripts in this repo, as they can be used for various purposes. Once finished with the above steps, go to [Build your own OpenJDK](../binaries/build_your_own_openjdk.md) to continue further with building OpenJDK.

*Note:* the VM is about **377MB** so please download beforehand on a slow home broadband, zero to full build of OpenJDK 9 takes about an hour (using a *MacBookPro 2013 with 16GB and SSD*).


### Detailed steps

*If you would like to do the above and explore all the technologies used to build the box.

The sections in this document are below, all the bullet points are steps required, all **bold** sections provided more information or optional configuration. **Any reference to $ is a command line argument to be executed within a vagrant vm. **

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

```bash
vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box;
```

On a slow home broadband from zero to full build of OpenJDK 9 can take an hour (machine spec: Using a MacBookPro 2013 with 16GB and SSD)

Load up VirtualBox and start up the machine.

##### Initial Vagrant VM setup
Once the vm has booted and dependencies have been installed the next script will download the latest version of jdk9, if already cloned it will update so multiple execute is handled.

```bash
  $ vagrant ssh
  $ sh /vagrant/scripts/source-share-with-host.sh
```

##### OpenJDK 9 Build

```bash
  $ vagrant ssh
  $ cd /vagrant/sources/jdk9 ;
  $ bash get_source.sh ;
  $ bash configure;
  or 
  $ bash configure --disable-warnings-as-errors;
  $ make clean images ;
```  
```bash
  $ make test ;
```
There's also a [github repo](https://github.com/neomatrix369/adopt-openjdk-kiss-vagrant) with a *Vagrantfile* and accompanying scripts.