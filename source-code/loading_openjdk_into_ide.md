# Loading OpenJDK into IDE

Having obtained the Java source files either in native environment as per [Getting the source code](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKBuildInstructions#Manual) or [Sharing files from VM into its host machine](virtual-machines/sharing_host_folder_with_guest_vm.md) the links below show how to view / edit Java source code in an IDE.
* [IntelliJ](loading_openjdk_in_intellij.md)
* [Eclipse](loading_openjdk_in_eclipse.md)
* [Netbeans](loading_openjdk_in_netbeans.md)

As tested on Mac OSX 10.10 running Eclipse and VirtualBox 4.3.20 running VM: Ubuntu_12.04_OpenJDK_dev_1

Create a folder on host machine eg. ```
~/Public/Java```

Make sure the Ubuntu VM has guest additions installed:
```
 Menu: Device> Insert guest CD
 This should then auto-run.
```

Add a shared folder to the VM. For "Folder path" browse to the shared folder created above (eg ```~/Public/Java```)
If this displays a blank window, you might need to press ENTER (the blank window is a confirmation dialogue)

In the VM, cd into the shared folder shown above (eg ```
cd /media/sf_Java```), then fetch and build the Java source as described above 
e.g. 
```
hg clone... ; 
cd jdk9 ; 
./get_sources.sh ; 
bash configure ; 
make clean images```

 - Might need to be root to allow this, if the  cd  command fails with "Permission denied" then you need to:  ```
sudo -i```
 - TODO ideally remove this limitation, tried  chmod and chown  to allow non-root access , without success. Or share the guest's home folder using SMB and map to it from host, would need some configuring to make this work, downside of this approach is that the VM would need to be left running. 
