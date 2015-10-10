# Eclipse

Pour voir / modifier les sources de Java � partir d'Eclipse :
 - Cr�ez un nouveau projet Java
 - D�cochez "Use default location" 
 - Naviguez vers le r�pertoire jdk/, qui contient les r�pertoires src, make et test. Par exemple /home/openjdk/dev/jdk9/jdk sur une VM Ubuntu, ou smb://server/user/dev/jdk9/jdk si vous utilisez un [partage depuis la VM dans la machine h�te](../virtual-machines/sharing_host_folder_with_guest_vm.md). Cliquez sur OK et soyez patient...
 - Alternativement choisissez un sous-r�pertoire des r�pertoires ci-dessus, tel que java.base/share/classes pour travailler sur un sous ensemble moins large.
 
D�cochez le param�trage **Build automatically** pour �viter des erreurs de build.

