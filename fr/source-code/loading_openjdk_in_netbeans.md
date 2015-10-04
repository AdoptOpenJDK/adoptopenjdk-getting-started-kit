# NetBeans

Pour voir / modifier les sources de Java à partir de NetBeans :
 - Créez un nouveau projet
 - Cliquez droit sur le projet pour voir ses propriétés
 - Dans la liste sur la gauche cliquez sur la catégorie : **sources**
 - Cliquez sur le bouton : **Add Folder**
 - Naviguez vers le répertoire jdk/, qui contient les répertoires src, make et test. Par exemple /home/openjdk/dev/jdk9/jdk sur une VM Ubuntu, ou smb://server/user/dev/jdk9/jdk si vous utilisez un [partage depuis la VM dans la machine hôte](../virtual-machines/sharing_host_folder_with_guest_vm.md). Cliquez sur OK et soyez patient...
 - Alternativement choisissez un sous-répertoire des répertoires ci-dessus, tel que java.base/share/classes pour travailler sur un sous ensemble moins large.
