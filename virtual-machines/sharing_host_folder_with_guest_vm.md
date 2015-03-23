# Sharing host folder with guest VM

This section describes how to access the Java source code that is inside a VM, from your IDE running on the host computer. This way you can edit in your favourite IDE and environment, then switch to the VM when you are ready to build...

As tested on *Mac OSX 10.10* running *VirtualBox 4.3.20* with the Ubuntu_12.04_OpenJDK_dev_1 VM.

We tried using VirtualBox shared folders, but the Open JDK build environment has problems running in a shared folder, particularly concerning C++ precompiled headers. It would be nice to get this working at some stage, and only fire up the VM when you want to build, but for now we can leave the VM running and access its files from the host computer via Samba, as detailed below. 

TODO MB complete this bit...

See [this article](http://www.howtogeek.com/howto/ubuntu/share-ubuntu-home-directories-using-samba/) or [this one]( http://superuser.com/questions/241825/share-virtualbox-folders-in-reverse-guest-host) for more details.

###[Old stuff to delete... ]
Create a folder on host machine such as ```~/Public/Java```

Make sure that the Ubuntu VM has guest additions installed:
 - From the menu choose: Device  then  Insert guest CD
 - This should then auto-run.

Add a shared folder to the VM. For "Folder path" browse to the shared folder you created above (eg ```~/Public/Java```)
If this displays a blank window, you might need to press ENTER (the blank window is a confirmation dialogue)

In the VM, cd into the shared folder shown above (eg ```cd /media/sf_Java```), then fetch and build the Java source as described above [Building your own OpenJDK](binaries/build_your_own_openjdk.md).
 - This might require root to allow this, if the  cd  command fails with "Permission denied" then try:  ```sudo -i```
 - TODO Ideally remove this limitation, would be good to run as non-root. An alternative could be to  share the guest's home folder using SMB and map to it from host, some research and configuring is required here, and it has the disadvantage that the VM would need to be running in order to access the jdk source files.