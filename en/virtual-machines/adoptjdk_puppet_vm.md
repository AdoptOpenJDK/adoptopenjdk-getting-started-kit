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

Usage
=====

Initial Startup
---------------

To bring up the Puppet Sandbox environment, issue the following command:

```
    $ vagrant up
```

Puppet will install Mercurial and OpenJDK 7.

Clone OpenJDK 8 project.

Get get_source.sh in order to download all OpenJDK 8 sources.

Run bash configure to ensure its all ready for the build.

Run make images.