# Windows

**Sous Windows, quand je lance la VM dans VirtualBox, VirtualBox lance une erreur : “amd-v is disabled in bios”**

Redemarrez le PC, entrez dans le BIOS puis activez la virtualisation.

**Sous Windows 8, quand on lance la VM dans VirtualBox, VirtualBox affiche une erreur "VT-x/AMD-V hardware acceleration is not available. Your 64-bit guest will fail to detect a 64-bit CPU and will not be able to boot."**

Intel VT-x est peut-être désactivé, c'est particulièrement vrai sur une nouvelle machine. D'abord, vérifiez que Microsoft Hyper-V n'est pas installé et n'interfère pas, puis vérifiez le BIOS/UEFI pour vous assurez que VT-x est activé. [Ce lien](http://www.howtogeek.com/213795/how-to-enable-intel-vt-x-in-your-computers-bios-or-uefi-firmware/) donne un bon guide pas-à-pas pour véfier et corriger les fonctionalités d'accélération de la VM.

**Sous Windows, quand on lance la VM Ubuntu, elle n'est pas connectée à internet**

Allez dans ```Network connections -> Virtual Box Host Only connection -> selectionnez "Properties" -> Cochez VirtualBox Bridged Networking Driver```.

Maintenant, internet devrait fonctionné dans l'invité, [voir ce lien](
http://stackoverflow.com/questions/35375/internet-access-in-ubuntu-on-virtualbox).
