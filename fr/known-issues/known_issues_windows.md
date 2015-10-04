# Windows

**Sous Windows, quand je lance la VM dans VirtualBox, VirtualBox lance une erreur : “amd-v is disabled in bios”**

Redemarrez le PC, entrez dans le BIOS puis activez la virtualisation.

**Sous Windows, quand on lance la VM Ubuntu, elle n'est pas connectée à internet**

Allez dans ```Network connections -> Virtual Box Host Only connection -> selectionnez "Properties" -> Cochez VirtualBox Bridged Networking Driver```.

Maintenant, internet devrait fonctionné dans l'invité, [voir ce lien](
http://stackoverflow.com/questions/35375/internet-access-in-ubuntu-on-virtualbox).
