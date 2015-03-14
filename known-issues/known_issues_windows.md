# Windows

**On Windows platform, when I start my VM in VirtualBox, VirtualBox throws an error Error: “amd-v is disabled in bios”**

Go to BIOS setting by restarting and enable Virtualization Technology Under the Menu option called System Configuration.

**On Windows VM host, the Ubuntu guest is not connected to the internet**

Go to network connections -> Virtual Box Host Only connection -> Select "Properties" -> Check VirtualBox Bridged Networking Driver.

Now, internet on guest should work.

http://stackoverflow.com/questions/35375/internet-access-in-ubuntu-on-virtualbox
