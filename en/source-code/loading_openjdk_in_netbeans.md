# Netbeans

To view / edit Java source files from Netbeans:
 - Create a new Project
 - Right-click on the project and view its Properties
 - In the left-hand list click the category: **sources**
 - Click the right-hand button: **Add Folder**
 - Browse to the jdk/ folder, which contains the src, make and test folders. For example /home/openjdk/dev/jdk9/jdk on a Ubuntu VM, or smb://server/user/dev/jdk9/jdk if you are using a [share from VM into the host machine](../virtual-machines/sharing_host_folder_with_guest_vm.md). Press OK and be patient.
 - Alternatively choose a sub-folder of the above, such as java.base/share/classes to work with a smaller sub-set.