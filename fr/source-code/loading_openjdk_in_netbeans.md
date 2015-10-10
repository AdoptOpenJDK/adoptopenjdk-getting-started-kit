# NetBeans

Pour voir / modifier les sources de Java � partir de NetBeans :
 - Cr�ez un nouveau projet
 - Cliquez droit sur le projet pour voir ses propri�t�s
 - Dans la liste sur la gauche cliquez sur la cat�gorie : **sources**
 - Cliquez sur le bouton : **Add Folder**
 - Naviguez vers le r�pertoire jdk/, qui contient les r�pertoires src, make et test. Par exemple /home/openjdk/dev/jdk9/jdk sur une VM Ubuntu, ou smb://server/user/dev/jdk9/jdk si vous utilisez un [partage depuis la VM dans la machine h�te](../virtual-machines/sharing_host_folder_with_guest_vm.md). Cliquez sur OK et soyez patient...
 - Alternativement choisissez un sous-r�pertoire des r�pertoires ci-dessus, tel que java.base/share/classes pour travailler sur un sous ensemble moins large.
