## Comment préparer un environement sur votre machine ?

**Note :** referez vous à la section [Problèmes connus](../known-issues/known_issues.md) si vous rencontrez des difficultés, si vous n'y trouvez pas de la solution, soit [Contributez à ce livre](../contributors.md) ou [Rapportez nous le problème](../feedback.md).

### Pour construire OpenJDK nativement ou dans le Cloud

**Note:** Sauf à avoir une large bande passante, ne tentez pas de construire OpenJDK nativement.

Vous n'avez pas besoin de copier quoi que ce soit, il suffit de vous inscrire au près d'un fournisseur de Cloud, par exemple Amazon ou autre.

Provisionnez une machine faisant tourner l'OS de votre choix, puis suivez les instructions mentionnées dans [Adopt OpenJDK Build Instructions](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKBuildInstructions) (nous recommandons une distribution Linux, tel qu'Ubuntu, Fedora ou Centos).


###  Pour construire OpenJDK dans une VM Virtualbox
Copiez ces fichiers sur votre machine :
   
    VirtualBox pour Ubuntu/[binaries]
                ou
    VirtualBox pour MacOS/[binaries]
                ou    
    VirtualBox pour Windows/[binaries]
   
    OpenJDK VM Images/OpenJDK9_Jigsaw_vm
                ou    
    OpenJDK VM Images/OpenJDK VM with no IDE support
                ou    
    OpenJDK VM Images/OpenJDK VM with Eclipse

    OpenJDK VM Images/OpenJDK VM passwords.txt

- Installez VirtualBox
- Lancez VirtualBox (Oracle VirtualBox)
- Importez la VM appropriée (ne créez pas une nouvelle configuration)
- Démarrez la VM

Enfin procédez jusqu'à la section [Construire OpenJDK 9](../binaries/build_openjdk_9.html).
   
###  Pour construire OpenJDK dans une VM créée avec un script Vagrant
Copiez ces fichiers vers votre machine :

	Vagrant/*.*
    Vagrant/openjdk-vagrant-images
    Vagrant/[binaries]

- Installez Vagrant et assurez vous qu'il fonctionne dans votre environement
- Decompressez les fichiers .tar.gz dans votre répertoire Vagrant
- Lisez le README.md pour comprendre ce que chaque script fait
- Utilisez les scripts une fois confiant
- Note : N'exécutez pas le Vagrantfile pour construire une image - cela prends du temps et requiert une large bande passante
- Note : il n'existe pas de script pour Windows (contributions acceptées)
   
### Pour construire OpenJDK dans un conteneur créé par un script Docker
Copiez ces fichers vers votre machine :

	Docker/*.*
    Docker/OpenJDK9
    Docker/OpenJDK9-baseimage

- Installez Docker (et Boot2Docker) et assurez vous qu'il fonctionne dans votre environement
- Lisez le README.md pour comprendre ce que chaque script fait
- Utilisez les scripts une fois confiant
- Utilisez le script loadImageToFile.sh pour charger l'image docker dans votre repo locale
- Note : N'exécutez pas le Dockerfile pour construire une image - cela prends du temps et requiert une large bande passante
- Note : il n'existe pas de script pour Windows (contributions acceptées)

<br/>
##### Enfin
Quand vous avez terminé continuez avec la section [Comment naviguer et progresser ?](how-to-navigate-and-make-progress.md).
