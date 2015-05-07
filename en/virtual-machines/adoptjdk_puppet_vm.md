# OpenJDK 8 Vagrant Puppet

**Please be mindful these files are several GB in size, so download these files only with a high-speed environment and not at a hands-on event.**

Description
===========
Ubuntu 12.04 Sandbox is a vagrant [Vagrant](http://vagrantup.com/)-based Puppet
development environment used for running and testing OpenJDK 8 modules.

It has never been so easy to build the OpenJDK project. vagrant up will get you up and running o/
![OpenJDK](https://soujavablog.files.wordpress.com/2015/05/openjdk.jpg)

Requirements
============

To use this, you must have the following items installed and working:

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant 1.7+](http://vagrantup.com/)
* [Git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

Usage
=====


Run Git Clone
-------------

```
git clone https://github.com/soujava/adoptjdk-puppet-vm.git
```

Initial Startup
---------------

To bring up the Puppet Sandbox environment, issue the following command inside the adoptjdk-puppet-vm folder:

```
    $ vagrant up
```

Puppet will automatically install Mercurial and OpenJDK 7,
clone OpenJDK 8 project, execute ```get_source.sh``` in order to download all OpenJDK 8 sources,
run ```bash configure``` to ensure its all ready for the build and run ```make images``` in order to build the JDK8 images.

*Note that this process can take up to 50 minutes. Tested on a MacPro 2014 250GB SSD 16GB RAM.


If all goes well, you should see the following log message:

```
==> default: ## Finished images (build time 00:00:49)
==> default: ----- Build times -------
==> default: Start 2015-05-01 20:04:30
==> default: End   2015-05-01 20:51:58
==> default: 00:00:42 corba
==> default: 00:00:53 demos
==> default: 00:34:31 hotspot
==> default: 00:00:49 images
==> default: 00:00:26 jaxp
==> default: 00:00:38 jaxws
==> default: 00:08:28 jdk
==> default: 00:00:49 langtools
==> default: 00:00:12 nashorn
==> default: 00:47:28 TOTAL
==> default: -------------------------
==> default: Finished building OpenJDK for target 'images'
```