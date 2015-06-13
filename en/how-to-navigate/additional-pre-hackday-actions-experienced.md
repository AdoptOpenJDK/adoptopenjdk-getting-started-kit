# Additional pre-hackday actions for experienced attendees

##### Build your own VM

Note: you will need good bandwidth to download the files, and ample time for the build to finish. **Not meant to be done over a wifi connection.**

<br/>
[Build your own VM](../virtual-machines/build_your_own_vm.md) <br/>
[Build your own light-weight VM](../virtual-machines/build_your_own_lightweight_vm.md)

<br/>
##### Check VM
- Load the VM into VirtualBox
- Start the VM
- Run any program inside the VM
- Shutdown the VM

<br/>
##### Download / copy Docker Images
Once images are downloaded they can be copied from one location or device to another, see section [Copy Images](../docker-images/copy-images.md).

or
<br/>
##### Build Images
Checkout [Build Images](../docker-images/build-images.md) under Docker images.

<br/>
##### Check Images
Checkout [Check Images](../docker-images/check-images.md) under Docker images.

<br/>
##### Verify installation and environment
Start the VM or the Docker Container, navigate to the jdk8 or jdk9 folders, and run the below command:

```
bash configure
make clean images
```

If one of these fails then the OpenJDK environment isn't correctly set or the new build is broken in OpenJDK master.

<br/>
##### Finally
When done go to the [How to navigate and make progress ?](how-to-navigate-and-make-progress.md) section, and move to the next step to continue with the flow.