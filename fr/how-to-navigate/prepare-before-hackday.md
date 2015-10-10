###Comment vous pr�parer avant de participer � un hackday ou atelier ?

##### Pr�requis mat�riel / OS / logiciels
Pr�requis pour construire ou utiliser des VMs :

    CPU 64-bit (~ 2.0 Ghz)
    OS 64-bit (Linux, MacOS, Windows)
    15-20 Go minimum d'espace libre sur disque
    4-8 Go de RAM minimum

Pr�requis platforme / logiciels
    VirtualBox install�
    Java 7 et 8 install�
    Vagrant install�
    Docker install� (optionel)
    Boot2Docker install� (optionel)
    
Autres pr�requis :

    compr�hension de Java
    compr�hension des syst�mes de build, maven, git, etc...
    un peu de connaissance de Linux et bash
    un peu de connaissance d'OpenJDK
<br/>
##### T�l�chargez logiciels utiles
- VirtualBox (pour charger la VM) : https://www.virtualbox.org/
- Java (dans la VM) : http://www.oracle.com/technetwork/java/javase/downloads/index.html
- Vagrant (pour d�marrer les boxes vagrant) https://www.vagrantup.com/

_Optionel_
- Docker: https://docs.docker.com/installation/#installation
- Boot2Docker: http://boot2docker.io/
- IntelliJ: https://www.jetbrains.com/idea/
- Eclipse: https://eclipse.org/
- Netbeans: https://netbeans.org/
- SonarQube: http://www.sonarqube.org/

<br/>
##### T�l�chargez ou copiez des VMs pr�te � l'emploi

T�l�chargez - _VM Ubuntu 12.04 avec les sources d'OpenJDK 9 (jigsaw) et IntelliJ_ :
    
    https://copy.com/tA0l06zDrJNNDKVL
    Login/password: openjdk / openjdk123

Ces images sont disponible via des disques portables. 
Dans les deux cas, vous devrez ensuite importer ces appliances dans VirtualBox via ```File | Import Appliances...```.

#### Construisez OpenKJDK nativement ou dans le cloud

Voyez la section [Construire OpenJDK 9](binaries/build_openjdk_9.md) pour apprendre comment construire OpenJDK nativement sur ordinateur ou m�me dans le cloud.

##### Verifiez l'installation et l'environment
D�marrez la VM, naviguez vers les r�peroires jdk8 ou jdk9, et lancer les commandes (voir la section [Construire OpenJDK 9](../binaries/build_openjdk_9.md)):

```
bash get_source.sh
bash configure
make clean images
```

Si une des ces commandes �choue alors c'est que l'environement d'OpenJDK n'est pas correctement configur� (ou que la build est cass�e dans le master). Dans ce cas r�f�rez vous aux [Probl�mes connus](../known-issues/known_issues.md) ainsi que la section[Retours](../feedback.md).

<br/>
##### Enfin
Une fois terminer allez � la section [Comment naviguer et progresser ?](how-to-navigate-and-make-progress.md), et passez � l'�tape suivante.

Pour les utilisateurs r�guli�s / exp�riment�s, il y a �galement une section, visitez [Actions pr�-hackday aditionnelles pour participants exp�riment�s](additional-pre-hackday-actions-experienced.md).