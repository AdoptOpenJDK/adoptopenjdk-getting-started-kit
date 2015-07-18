## How to setup the environment on your machine on the day ? 

**Note:** refer to the [Known issues](../known-issues/known_issues.md) section in case you come across issues, if you don't find the solutions there, either [Contribute to this book](../contributors.md) or [Report to us](../feedback.md).

### To build OpenJDK natively or on the cloud

**Note:** Unless you are in an high network bandwidth environment, please do NOT attempt to build OpenJDK natively.

You don't need to copy anything, just signup with a cloud environment provider i.e. Amazon or another provider.

Provision a box running an OS of choice, and follow the steps mentioned on [Adopt OpenJDK Build Instruction](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKBuildInstructions) (we recommend a Linux distro like Ubuntu or Fedora or Centos).


###  To build OpenJDK in a Virtualbox VM
Copy these files from the portable device to your machine:
   
    VirtualBox for Ubuntu/[binaries]
                or
    VirtualBox for MacOS/[binaries]
                or    
    VirtualBox for Windows/[binaries]
    
   
    OpenJDK VM Images/OpenJDK9_Jigsaw_vm
                or    
    OpenJDK VM Images/OpenJDK VM with no IDE support
                or    
    OpenJDK VM Images/OpenJDK VM with Eclipse
    

    OpenJDK VM Images/OpenJDK VM passwords.txt

- Install VirtualBox 
- Run VirtualBox (Oracle VirtualBox)
- Import the respective VM (do not Create a new VirtualBox setting)
- Start the VM

Finally proceed to the section to [Building OpenJDK 9](../binaries/build_openjdk_9.html).
   
###  To build OpenJDK in a VM created by a Vagrant script
Copy these files from the portable device to your machine:
    Vagrant/*.*
    Vagrant/openjdk-vagrant-images
    Vagrant/[binaries]

- Install Vagrant and ensure it works in the respective environments
- Unpack the .tar.gz files in the Vagrant folder
- Read the README.md to understand what each of the script files do
- Use the scripts when confident
- Note: Do not execute the Vagrantfile to build an image - this takes times and requires high network bandwidth
- Note: no scripts for Windows exists (contributions accepted)
   
### To build OpenJDK in a container created by a Docker script
Copy these files from the portable device to your machine:

    Docker/*.*
    Docker/OpenJDK9
    Docker/OpenJDK9-baseimage

- Install Docker (and Boot2Docker) and ensure they work in the respective environments
- Read the README.md to understand what each of the script files do
- Use the scripts when confident
- Use the loadImageToFile.sh script to load the docker image into your local repository
- Note: Do not execute the Dockerfile to build an image - this takes times and requires high network bandwidth
- Note: no scripts for Windows exists (contributions accepted)

<br/>
##### Finally
When done go to the [How to navigate and make progress ?](how-to-navigate-and-make-progress.md) section, and move to the next step to continue with the flow.
