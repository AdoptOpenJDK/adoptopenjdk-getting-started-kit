###Comment vous préparer avant de participer à un hackday ou atelier ?

##### Prérequis matériel / OS / logiciels
Prérequis pour construire ou utiliser des VMs :

    CPU 64-bit (~ 2.0 Ghz)
    OS 64-bit (Linux, MacOS, Windows)
    15-20 Go minimum d'espace libre sur disque
    4-8 Go de RAM minimum

Prérequis platforme / logiciels
    VirtualBox installé
    Java 7 et 8 installé
    Vagrant installé
    Docker installé (optionel)
    Boot2Docker installé (optionel)
    
Autres prérequis :

    compréhension de Java
    compréhension des systèmes de build, maven, git, etc...
    un peu de connaissance de Linux et bash
    un peu de connaissance d'OpenJDK
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
    Login/password: openjdk / openjdk123

Ces images sont disponible via des disques portables. 
Dans les deux cas, vous devrez ensuite importer ces appliances dans VirtualBox via ```File | Import Appliances...```.

#### Construisez OpenKJDK nativement ou dans le cloud

Voyez la section [Construire OpenJDK 9](binaries/build_openjdk_9.md) pour apprendre comment construire OpenJDK nativement sur ordinateur ou même dans le cloud.

##### Verifiez l'installation et l'environment
Démarrez la VM, naviguez vers les réperoires jdk8 ou jdk9, et lancer les commandes (voir la section [Construire OpenJDK 9](../binaries/build_openjdk_9.md)):

```
bash get_source.sh
bash configure
make clean images
```

Si une des ces commandes échoue alors c'est que l'environement d'OpenJDK n'est pas correctement configuré (ou que la build est cassée dans le master). Dans ce cas référez vous aux [Problèmes connus](../known-issues/known_issues.md) ainsi que la section[Retours](../feedback.md).

<br/>
##### Enfin
Une fois terminer allez à la section [Comment naviguer et progresser ?](how-to-navigate-and-make-progress.md), et passez à l'étape suivante.

Pour les utilisateurs réguliés / expérimentés, il y a également une section, visitez [Actions pré-hackday aditionnelles pour participants expérimentés](additional-pre-hackday-actions-experienced.md).