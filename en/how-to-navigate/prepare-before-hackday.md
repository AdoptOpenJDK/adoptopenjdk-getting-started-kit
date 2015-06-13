###How to prepare before attending a hackday or workshop?

##### Minimum hardware / OS platform / software requirements
Below is the minimum hardware requirements to build or use VMs:

    64-bit CPU running (~ 2.0 Ghz)
    64-bit OS (Linux, MacOS, Windows)
    15-20 GB free disk space minimum
    4-8 GB RAM minimum

Platform / software requirements:

    VirtualBox installed
    Java 7 and 8 installed
    Vagrant installed (optional)
    Docker installer (optional)
    
Other requirements:

    understanding of Java
    understanding of build systems, maven, git, etc... 
    some experience with Linux and bash
    some knowledge of OpenJDK
<br/>
##### Download supporting software
- VirtualBox (to load the VM): https://www.virtualbox.org/
- Java (inside the VM): http://www.oracle.com/technetwork/java/javase/

_Optional_
- Vagrant: https://www.vagrantup.com/
- Docker: https://www.docker.com/downloads/index.html
- IntelliJ: https://www.jetbrains.com/idea/
- Eclipse: https://eclipse.org/
- Netbeans: https://netbeans.org/
- SonarQube: http://www.sonarqube.org/

<br/>
##### Download or copy ready-made VM

Download the below VM - _Ubuntu 12.04 VM with OpenJDK9 (jigsaw) with Sources and IntelliJ_:
    
    https://copy.com/tA0l06zDrJNNDKVL
    Login/password: openjdk / openjdk123

VM images are available via portable drives to be copied from to your local disk as well. 

Images are loaded via the ```File | Import Appliances...``` VirtualBox main menu.

<br/>
##### Verify installation and environment
Start the VM, navigate to the jdk8 or jdk9 folders, and run the below command (see section [Build OpenJDK 9](../binaries/build_openjdk_9.md)):

```
bash get_source.sh
bash configure
make clean images
```

If one of the above commands fail then the OpenJDK environment isn't correctly set or the new build is broken in OpenJDK master. In that case refer to the [Known issues](../known-issues/known_issues.md) section and see the [Feedback](../feedback.md) section.

<br/>
##### Finally
When done go to the [How to navigate and make progress ?](how-to-navigate/how-to-navigate-and-make-progress.md) page, and move to the next step in the flow.

For regular / experienced users, there's also a section, see [Additional pre-hackday actions for experienced attendees](how-to-navigate/additional-pre-hackday-actions-experienced.md).