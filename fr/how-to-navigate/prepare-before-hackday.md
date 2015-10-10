##Comment vous préparer avant de participer à un hackday ou atelier ?

**Note :** referez vous à la section [Problèmes connus](../known-issues/known_issues.md) si vous rencontrez des difficultés, si vous n'y trouvez pas de la solution, soit [Contributez à ce livre](../contributors.md) ou [Reportez nous le problème](../feedback.md).

##### Prérequis matériel / OS / logiciels
Prérequis pour construire ou utiliser des VMs :

    CPU 64-bit (> 2.0 Ghz)
    OS 64-bit (Linux, MacOS, Windows)
    20-25 Go minimum d'espace libre sur disque
    4-8 Go de RAM minimum

Prérequis platforme / logiciels
    VirtualBox installé
    Java 7 et 8 installé
    Vagrant installé
    Docker installé (optionel)
    Boot2Docker installé (optionel)
    
**suivant que vous construisiez OpenJDK nativement ou dans une VM ou dans un Vagrant ou conteneur Docker, vous aurez besoin de le telecharger soit dans une VM soit sur votre machine**
    
Autres prérequis :

    compréhension de Java
    compréhension des systèmes de build, maven, git, etc...
    un peu de connaissance de Linux et bash
    un peu de connaissance d'OpenJDK
    un peu d'experience avec Vagrant (optionnel, uniquement si vous utilisez cette technologie)
    un peu d'experience avec Docker (optionnel, uniquement si vous utilisez cette technologie)
<br/>
##### Téléchargez logiciels utiles
- VirtualBox (pour charger la VM) : https://www.virtualbox.org/
- Java (dans la VM) : http://www.oracle.com/technetwork/java/javase/downloads/index.html
- Vagrant (pour démarrer les boxes vagrant) https://www.vagrantup.com/

_Optionel_
- Docker: https://docs.docker.com/installation/#installation
- Boot2Docker: http://boot2docker.io/
- IntelliJ: https://www.jetbrains.com/idea/
- Eclipse: https://eclipse.org/
- Netbeans: https://netbeans.org/
- SonarQube: http://www.sonarqube.org/

<br/>
##### Téléchargez ou copiez des VMs prête à l'emploi

Téléchargez - _VM Ubuntu 12.04 avec les sources d'OpenJDK 9 (jigsaw) et IntelliJ_ :
    
    https://copy.com/tA0l06zDrJNNDKVL
    Login : openjdk
    Password : openjdk123

Ces images sont disponible via des disques portables. 
Dans les deux cas, vous devrez ensuite importer ces appliances dans VirtualBox via ```File | Import Appliances...```.

#### Construisez OpenJDK nativement ou dans le cloud

Voyez la section [Construire OpenJDK 9](binaries/build_openjdk_9.md) pour apprendre comment construire OpenJDK nativement sur ordinateur ou même dans le cloud.

##### Verifiez l'installation et l'environment
Sur votre machine ou dans votre VM, naviguez vers les réperoires openjdk, et lancer les commandes (voir la section [Construire OpenJDK 9](../binaries/build_openjdk_9.md)):

*openjdk - sources/jdk9 or dev/jdk9_dev*

Comme les VMs, Vagrants, et image Docker que vous copiez ou téléchargez viennent avec une copie de travail fonctionnant, nous pouvons l'utiliser pour l'atelier et n'avons pas besoin d'obtenir les nouveaux changements et de la reconstruire.
```
bash get_source.sh
```
Par conséquent NE lancez PAS cettte commande dans une VM, un vagrant ou conteneur Docker, car cela peut prendre du temps pour l'image se construise ou dans certain cas mener à une build cassée qui pourrait nécessité une investigation et correction
Au lieu de cela, lancez seulement les deux commandes suivantes :

```
bash configure --disable-warnings-as-error
make images
```

Note : SVP évitez également la commande 'make clean images', sauf si réellement nécessaire afin d'éviter d'attendre la complétion d'une build complète

Si une des ces commandes échoue alors c'est que l'environement d'OpenJDK n'est pas correctement configuré (ou que la build est cassée dans le master). Dans ce cas référez vous aux [Problèmes connus](../known-issues/known_issues.md) ainsi que la section[Retours](../feedback.md).

<br/>
##### Enfin
Une fois terminer allez à la section [Comment naviguer et progresser ?](how-to-navigate-and-make-progress.md), et passez à l'étape suivante.

#####Pour les utilisateurs réguliés / expérimentés ayant effectués les instructions précédentes avec succès, et qui souhaitent explorer les scripts **Vagrant** et **Docker**, il y a également une section [Actions pré-hackday aditionnelles pour participants expérimentés](additional-pre-hackday-actions-experienced.md) que vous pouvez suivre.