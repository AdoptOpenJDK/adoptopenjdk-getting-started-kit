##How to prepare before attending a hackday or workshop?

**Note:** refer to the [Known issues](../known-issues/known_issues.md) section in case you come across issues, if you don't find the solutions there, either [Contribute to this book](../contributors.md) or [Report to us](../feedback.md).

##### Minimum hardware / OS platform / software requirements
Below is the minimum hardware requirements to build or use VMs:

    64-bit CPU running (> 2.0 Ghz)
    64-bit OS (Linux, MacOS, Windows)
    20-25 GB free disk space minimum
    4-8 GB RAM minimum

Platform / software requirements:

    VirtualBox installed
    Java 7 and 8 installed*
    Vagrant installed
    Docker installed (optional)
    Boot2Docker installed (optional)
    
**depending on if you build OpenJDK natively or in a VM or Vagrant box or Docker container, you will need to download it either in the VM or on your machine*

Other requirements:

    understanding of Java
    understanding of build systems, maven, git, etc... 
    some experience with Linux and bash
    some knowledge of OpenJDK
    experience with vagrant (optional, only if you are going to work with this tech)
    experience with docker (optional, only if you are going to work with this tech)
<br/>
##### Download supporting software
- VirtualBox (to load the VM): https://www.virtualbox.org/
- Java (inside the VM): http://www.oracle.com/technetwork/java/javase/
- Vagrant (to start vagrant boxes) https://www.vagrantup.com/

_Optional_
- Docker: https://docs.docker.com/installation/#installation
- Boot2Docker: http://boot2docker.io/
- IntelliJ: https://www.jetbrains.com/idea/
- Eclipse: https://eclipse.org/
- Netbeans: https://netbeans.org/
- SonarQube: http://www.sonarqube.org/

<br/>
##### Download or copy ready-made VM

Download the below VM - _Ubuntu 12.04 VM with OpenJDK9 (jigsaw) with Sources and IntelliJ_:
    
    https://copy.com/tA0l06zDrJNNDKVL
    Login: openjdk 
    Password: openjdk123

VM images are available via portable drives to be copied from to your local disk as well. 

Images are loaded via the ```File | Import Appliances...``` VirtualBox main menu.

#### Building OpenJDK natively or on the cloud

See section [Building OpenJDK 9](../binaries/build_openjdk_9.md) to find out how you build OpenJDK on a native OS i.e. Linux, MacOS or Windows running on your Desktop/Laptop or even on the cloud.

<br/>
##### Verify installation and environment
In your native machine or virtual machine (inside the VM), navigate to the openjdk* folders, and run the below command (see section [Build OpenJDK 9](../binaries/build_openjdk_9.md)):

*openjdk - sources/jdk9 or dev/jdk9_dev


As the VMs, Vagrant boxes or Docker image you may copy or download, already come with a built image, we can continue to use that for the workshop and not need to update the code-base with newer changes and start with the re-build process again. 
```
bash get_source.sh
```
Hence please DO NOT run the above command in the VM, vagrant box or Docker containers, as it could lead to waiting for the image to finish building or in some cases a broken build that would require investigation and fixing.

Instead run the below two commands:

```
bash configure --disable-warnings-as-errors
make images
```

Note: Please also avoid the 'make clean images' command, unless its really necessary, to avoid waiting for the whole build process to finish.

If one of the above commands fail then the OpenJDK environment isn't correctly set or the new build is broken in OpenJDK master. In that case refer to the [Known issues](../known-issues/known_issues.md) section and see the [Feedback](../feedback.md) section.

<br/>
##### Finally
When done go to the [How to navigate and make progress ?](how-to-navigate-and-make-progress.md) section, and move to the next step to continue with the flow.

#####For regular / experienced users, who have successfully completed the above, and wish to explore **Vagrant** and **Docker** scripts. Then there's a section called [Additional pre-hackday actions for experienced attendees](additional-pre-hackday-actions-experienced.md) for you to pursue.