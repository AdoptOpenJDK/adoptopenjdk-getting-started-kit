# Eclipse

To view / edit Java source files from Eclipse:
 - Create a new Java Project
 - Untick "Use default location" 
 - Browse to the jdk/ folder, which contains the src, make and test folders. For example /home/openjdk/dev/jdk9/jdk on a Ubuntu VM, or smb://server/user/dev/jdk9/jdk if you are using a [share from VM into the host machine](../virtual-machines/sharing_host_folder_with_guest_vm.md). Press OK and be patient.
 - Alternatively choose a sub-folder of the above, such as java.base/share/classes to work with a smaller sub-set.
 
Un-tick Eclipse's **Build automatically** setting to prevent build errors.

## Nashorn project

The current setup is made on OS X Yosemite and the latest Eclipse (Luna). But the setup for other OSs should run almost the same way.

1 . Verify you have JDK8 installed.

2 . Using mercurial clone the repository http://hg.openjdk.java.net/jdk9/dev to the folder you want and execute get_sources.sh

3 . Now switch to Eclipse and create a project called Nashorn directly in the folder “<JDK9_SOURCES>/nashorn”

![](17 июня 2015 г., 11:09:56.png)

4 . Eclipse is quite clever to find source folders:

![](17 июня 2015 г., 11:35:25.png)
 

5 . A bit tricky part: The compilation, development and debugging currently is done against JDK8 since the IDE still does not support JDK9 and the jimage distribution mechanism. So, in order JDK’s Nashorn not to interfere with one we build it’s a good idea to make a new copy of JDK8 and to remove the nashorn.jar from the JDK located under <JDK8_ROOT>/jre/lib/ext/nashorn.jar:

![](11.jpg)

6 . Now add this JDK to the IDE:

![](17 июня 2015 г., 11:39:25.png)

7 .  Almost done. Another tricky part: In Nashorn the so called “JavaScript” classes are been generated. There is a special tool “nasgen” for that and it is locates in the “buildtools/nasgen” directory

![](17 июня 2015 г., 11:52:04.png)

8 . Before running the Nashorn itself the nasgen “all” ant target should be run.

9 . Add the resulting “nasgen.jar” to the “Build Path” if it’s not there already.

![](17 июня 2015 г., 11:54:16.png)

10. Navigate to “<nashorn>/make” folder and run the “all” ant target.

11. Add the resulting classed in “<nashorn>/build/classes/” to the “Build Path”:

![](17 июня 2015 г., 11:59:31.png)

12. Now it is possible to run the Shell.java to explore and debug the code:

![](17 июня 2015 г., 12:02:24.png)
 

Debugging is available directly in the IDE :

![](17 июня 2015 г., 12:09:38.png)
 

Warning: Have in mind that some of classes – so called “JavaScript” classes are been generated. Their “bootstrapping” classes are annotated with @ScriptObject. Take some time to explore them. They cannot be debugged from that perspective. But “System.out.println” might help :)
