# How to prepare an environment on your machine ?

**Note:** refer to the [Known issues] section in case you come across issues, if you don't find the solutions there, either [Contribute to this book](../contributors.md) or [Report to us](../feedback.md).

# To build OpenJDK on the cloud
You don't need to copy anything, just signup with a cloud environment provider i.e. Amazon or another provider.

Provision a box running an OS of choice, and follow the steps mentioned on [Building OpenJDK 9](../binaries/build_openjdk_9.html) (we recommand a Linux distro like Ubuntu or Fedora or Centos).

# To build OpenJDK in a VM
Copy these files from the portable device to your machine:
   
   VirtualBox for Ubuntu
   
   OpenJDK VM Images/OpenJDK9_Jigsaw_vm
   OpenJDK VM Images/OpenJDK VM with no IDE support
   OpenJDK VM Images/OpenJDK VM with Eclipse

   OpenJDK VM Images/OpenJDK VM passwords.txt
   
# To build OpenJDK in a VM created by a Vagrant script
Copy these files from the portable device to your machine:

   Vagrant/openjdk-vagrant-images
   Vagrant/[binaries]

   
# To build OpenJDK in a container created by a Docker script
Copy these files from the portable device to your machine:

   Docker/OpenJDK9
   Docker/OpenJDK9-baseimage
   