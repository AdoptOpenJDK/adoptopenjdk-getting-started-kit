# Build your own light-weight VM

A simplifying and standard virtual machine used for building OpenJDK.

Please download the latest version of Vagrant aka 1.7.2 (https://www.vagrantup.com/downloads.html)

Once vagrant is installed please execute the following command line, it's 377MB so please download beforehand to save time on the day;

```vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box";```

On a slow home broadband from zero to full build of OpenJDK 9 can take an hou (machine spec: Using a MacBookPro 2013 with 16GB and SSD).
