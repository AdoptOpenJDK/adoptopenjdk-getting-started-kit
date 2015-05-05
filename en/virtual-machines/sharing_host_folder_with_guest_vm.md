# Sharing host folder with guest VM

This section describes how to access the Java source code that is inside a VM, from your IDE running on the host computer. This way you can edit in your favourite IDE and environment, then switch to the VM when you are ready to build.

As tested on *Mac OSX 10.10* running *VirtualBox 4.3.20* with the Ubuntu_12.04_OpenJDK_dev_1 VM.

A more ideal approach would be to use VirtualBox shared folders and have the VM work within a folder on the host machine. This was attempted unsuccessfully, it seems the Open JDK build environment has problems running in a shared folder, particularly concerning C++ precompiled headers. For now we can leave the VM running and access its files from the host computer via Samba, as detailed below. 


### 1. Configure Samba on the VM

Edit the Samba config file: 

```bash
sudo gedit /etc/samba/smb.conf
```

Find the **[homes]** section and check that the following lines are uncommented:
```ini
[homes]
comment = Home Directories
browseable = yes
writable = yes
```
Restart the Samba service:

```bash
sudo restart smbd
```

### 4. Give the VM a static ip address accessible from the host machine

In the VM's menu: **Machine > Network> Attached to:**
 - In the **Attached to** dropdown select **Bridged Adapter**
 - In the **Name** dropdown choose the entry that starts with **en0:**

Set the VM's subnet to be the same as the host. On the host run the `ifconfig` command to determine the subnet, 200.200.0.xxx in this example. On a Windows host use `ipconfig` instead. Choose an unused address, 200.200.0.129 in this example.

On the VM set the ip address, subnet and DNS from the graphical **System Settings** tool as follows:
 - Click **Network**
 - Click on **Wired** in the left-hand list
 - Press the **Options** button
 - Select the **IPv4** tab
 - In the **Method** dropdown choose **Manual**
 - Below **Addresses** click **Add** and enter:
  - the address you chose (200.200.0.129 in this example)
  - the netmask (255.255.255.0 in this example)
  - the gateway ie address of your router (200.200.0.90 in this example)
  - the DNS server ie address of your router (200.200.0.90 in this example)
 - Finally press the **Save** button

To verify the network settings, on the host machine ping the VM, for example:
```bash
ping 200.200.0.129
```

### 3. Connect from host machine
Map a shared drive / folder to the following point:
 - Server: **openjdk** (or ip address such as 200.200.0.129 if this doesn't work)
 - User: **OpenJDK**

Windows example: Map a drive to **\\\\200.200.0.129\OpenJDK** 

Mac example: In Finder press CMD-K and connect to **smb://200.200.0.129/openjdk**


See [this article](http://www.howtogeek.com/howto/ubuntu/share-ubuntu-home-directories-using-samba/) or [this one]( http://superuser.com/questions/241825/share-virtualbox-folders-in-reverse-guest-host) for more details.


### 4. Editing with your favourite IDE
Having shared the Java source files from the Ubuntu VM into your host machine, you can now view and edit them using your favourite editor, or an IDE such as:
 * [IntelliJ](../source-code/loading_openjdk_in_intellij.md)
 * [Eclipse](../source-code/loading_openjdk_in_eclipse.md)
 * [Netbeans](../source-code/loading_openjdk_in_netbeans.md)

 