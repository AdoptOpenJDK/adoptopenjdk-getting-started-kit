# Windows

**On Windows platform, when I start my VM in VirtualBox, VirtualBox throws an error Error: “amd-v is disabled in bios”**

Go to BIOS setting by restarting and enable Virtualization Technology Under the Menu option called System Configuration.

**On Windows 8 platform, launching my VM in VirtualBox, VirtualBox shows the error "VT-x/AMD-V hardware acceleration is not available. Your 64-bit guest will fail to detect a 64-bit CPU and will not be able to boot."**

Intel VT-x may be disabled, particularly on a new machine. First check Microsoft Hyper-V is not installed and interfering, then check BIOS/UEFI firmware to ensure VT-x is enabled. [This link](http://www.howtogeek.com/213795/how-to-enable-intel-vt-x-in-your-computers-bios-or-uefi-firmware/) provides a good step by step guide to check and fix VM acceleration features.

**On Windows VM host, the Ubuntu guest is not connected to the internet**

Go to ```Network connections -> Virtual Box Host Only connection -> Select "Properties" -> Check VirtualBox Bridged Networking Driver```.

Now, internet on guest should work, [see link](
http://stackoverflow.com/questions/35375/internet-access-in-ubuntu-on-virtualbox).
