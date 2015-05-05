# Eclipse

To view / edit Java source files from Eclipse:
 - Create a new Java Project
 - Untick "Use default location" 
 - Browse to the jdk/ folder, which contains the src, make and test folders. For example /home/openjdk/dev/jdk9/jdk on a Ubuntu VM, or smb://server/user/dev/jdk9/jdk if you are using a [share from VM into the host machine](../virtual-machines/sharing_host_folder_with_guest_vm.md). Press OK and be patient.
 - Alternatively choose a sub-folder of the above, such as java.base/share/classes to work with a smaller sub-set.
 
Un-tick Eclipse's **Build automatically** setting to prevent build errors.

