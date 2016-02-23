# Getting Started #

TODO suss how to add this chapter into main book

Some knowledge of Ubuntu and Linux commands is useful, but the steps below will get you up and running for now.

Commands that you need to type are shown like this:  
`$ ls ~/dev`		# Show contents of the `dev/` folder beneath our home folder.

The leading `$` sign is to indicate that this is a Linux command, you don't need to type the `$`. Likewise don't type any text that starts with `#` (these are just comments.)

### Install virtual machine ###
If you have already created a virtual machine, skip the following steps and proceed to **Start the VM**
* Install VirtualBox
* Obtain the VirtualBox AdoptOpenJDK VM image. Handed out at HackDay, or downloaded before if you have 3+ hours or fast internet, from: http://bit.ly/1bgs369 
* Double click the VM's .ova file (probably Ubuntu_12.04_OpenJDK_dev.ova) to open it in VirtualBox, and click the "Import" button.
* (Optional) Change the VM's settings to give more resources. Changing from the defaults to 4 cores and 6GB RAM can reduce JDK build time by around 20%

### Start the VM ###
When the VM has started, login as OpenJDK (password is j1a2v3a4)

* Start Firefox to check your internet connection. Google for "adopt OpenJDK getting started" and choose 
https://www.gitbook.com/book/adoptopenjdk/adoptopenjdk-getting-started-kit/details or  
https://www.gitbook.com/book/mikebgx/adopt-openjdk-quickstart-chapter/details  
You can copy & paste commands from these if you like.

* Open a Terminal session - Click Ubuntu's top-left start button and type:  `Terminal`

* Type `pwd` to show the current directory. It should be `/home/openjdk` - if not then `cd` to that location.

### Extra steps for downloaded VM ###
If you are using the downloaded .ova VM (8GB) rather than the larger USB-stick version (9GB) you will need a few extra steps. Check for this by typing:  
`$ ls dev`  
If this shows a directory called `jdk8` then you can skip the next few lines and proceed to **Check and build source files.** If `jdk8` does not exist, you probably have a directory called `jdk8_tl` instead, indicating that you have the older .ova and therefore do require these steps :  
* `$ cd ~/dev`  
* `$ hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8`	# Fetch initial source files


### Check and build source files ### 
To check that you have an initial version of the JDK8 source files, type:  
`$ ls ~/dev/jdk8`  
Build OpenJDK in that directory as follows:  
* `$ cd ~/dev/jdk8`
* `$ bash get_source.sh`		# Fetch latest sources (including various sub-directories)
* `$ bash configure`	    	# Initialise the build process with correct settings for your system / VM
* `$ make clean images`		# Build the JDK. This can take a while, tea time?!

This should create the familiar `bin/` directory containing `java` , `javac` etc under the `build` directory, with a name corresponding to your (virtual) machine, something like:
`build/linux-x86_64-normal-server-release/images/j2sdk-image/bin`  
Test this by running:   
`$ build/linux-x86_64-normal-server-release/images/j2sdk-image/bin/javac -version`  
You might need to change the `linux-x86_64-normal-server-release` part to match your environment.  
For subsequent builds, if you didn't make significant changes, try omitting `clean` and just type:  
`$ make images`		# Faster than  clean  (and might suffice.)

### Running your newly built JDK ###
Now use your shiny new JDK to build and run a simple program such as printing: `System.getProperty("java.version")`  
Either do this directly using the full path to the bin/ directory as above, or by pointing the environment to your new JDK using the following steps (as before, you might need to change the `linux-x86_64-normal-server-release` part to match your environment) :
* `$ export JAVA_HOME=/home/openjdk/dev/jdk8/build/linux-x86_64-normal-server-release/images/j2sdk-image`
* `$ export PATH=$JAVA_HOME/bin:$PATH`  
Similarly you can revert it back to another JDK by inspecting `/usr/lib/jvm`

### Next steps ###
See the main [OpenJDK Getting Started](https://www.gitbook.com/book/adoptopenjdk/adoptopenjdk-getting-started-kit) section, and try some of these ideas:  
* Change the [Random.java class.](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/intermediate-steps/change_the_randomjava_class.html)
* Change the [StringBuffer.java class](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/intermediate-steps/change_the_stringbufferjava_class_to_add_a_new_method.html) to add a new method.
* [Test latest Java](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/intermediate-steps/testing_java_early_project.html) by building your open source project on it.
* Build a different JDK such as [jdk9 or jigsaw](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/binaries/build_openjdk_9.html) 
* Check out options for the `./configure -help` command
* Investigate some new [JDK9 features](http://openjdk.java.net/projects/jdk9/) such as:  
* * Project Jigsaw, see [JEP 220](http://openjdk.java.net/jeps/220) and  [Tutorial](http://blog.codefx.org/java/dev/jigsaw-hands-on-guide/)
* * The Java Shell (Read-Eval-Print Loop) [jshell](http://openjdk.java.net/jeps/222)
* * New Version-String [Scheme](http://openjdk.java.net/jeps/223)
* Try the new Jan'16 build infrastrucure for around 40% improvement in build times, refer to [description](http://cr.openjdk.java.net/~ihse/docs/new-hotspot-build.html) and [Mailing list](http://mail.openjdk.java.net/mailman/listinfo/build-infra-dev).  
* Choose a [Java Enhancement Proposal (JEP)](http://openjdk.java.net/jeps/0) to implement.
* Look at existing issues in [JDK Bug Database](https://bugs.openjdk.java.net/secure/Dashboard.jspa). Click a project (such as JDK) then click an icon on the left (eg Backlog).
* and other ideas in the [beginners](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/how-to-navigate/beginners-level.html) and [intermediate](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/how-to-navigate/intermediate-level.html) and [advanced](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/how-to-navigate/advanced-level.html) sections. 



