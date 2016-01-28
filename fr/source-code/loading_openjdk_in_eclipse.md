# Eclipse

Pour voir / modifier les sources de Java à partir d'Eclipse :
 - Créez un nouveau projet Java
 - Décochez "Use default location" 
 - Naviguez vers le répertoire jdk/, qui contient les répertoires src, make et test. Par exemple /home/openjdk/dev/jdk9/jdk sur une VM Ubuntu, ou smb://server/user/dev/jdk9/jdk si vous utilisez un [partage depuis la VM dans la machine hôte](../virtual-machines/sharing_host_folder_with_guest_vm.md). Cliquez sur OK et soyez patient...
 - Alternativement choisissez un sous-répertoire des répertoires ci-dessus, tel que java.base/share/classes pour travailler sur un sous ensemble moins large.
 
Décochez le paramétrage **Build automatically** pour éviter des erreurs de build.

