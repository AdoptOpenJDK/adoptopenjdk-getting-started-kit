# Construire votre propre VM légère

Une machine virtuelle simplifiée et standardisée utilisée pour construire OpenJDK.


### Démarrage rapide

Téléchargez et installez la dernière version de *Vagrant 1.7.2 ou supérieur* depuis https://www.vagrantup.com/downloads.html.

Puis exécutez la ligne de commande suivante:

```
# Clonez la repo adopt-openjdk-kiss-vagrant
$ git clone https://github.com/adoptopenjdk/adopt-openjdk-kiss-vagrant.git

# Change vers un répertoire pour créer le Vagrantfile
$ cd adopt-openjdk-kiss-vagrant.git
$ vagrant init

# Lancez la machine
$ vagrant up

# ssh dans la VM
$ vagrant ssh

# dans le shell ssh
# Mapping in place: /vagrant/scripts/ ==> [currentfolder]/scripts
```

Observez les répertoires et scripts de cette repo, car ils peuvent être utilisé pour divers usages. Une fois ces instructions finies, allez à [Construire votre propre OpenJDK](../binaries/build_your_own_openjdk.md) pour continuer à construire OpenJDK.

*Note* : Cela prends à peu près **377Mo** donc s'il vous plait téléchargez avant de venir, de zéro à une build complète d'OpenJDK 9 prends à peu près une heure (en utilisant un *MacBookPro 2013 avec 16Go et un SSD*).

### Instructions détaillées

*Si vous souhaitez reproduire ce qui précède et explorer toutes les technologies utilisées pour contruire cette boîte.

Les sections dans ce document sont ci-après, tous les points sont requis, toutes les sections en **gras** donnent plus d'information ou des configurations optionelles. **Une référence à $ est un argument de la ligne de commande qui sera exécutée dans une vm vagrant.**

  - Installer VirtualBox, Vagrant et Git
  - Booter la VM Vagrant
  - Configuration de la VM Vagrant initiale
  - Construction d'OpenJDK 9

## Installer Virtual Box, Vagrant et Git
Installer le logiciel, initialement créé et testé sur un Mac et les version utilisées au 2015-01-18 sont :
  - Virtual Box v4.3.20 (https://www.virtualbox.org/wiki/Downloads)
  - Vagrant v1.7.1 (https://www.vagrantup.com/downloads.html)
  - Git v2.2.2 (http://git-scm.com/downloads)

## Télécharger la VM depuis une repo dans le cloud
Une fois vagrant installé, lancez la ligne de commande suivante, cela prends 377Mo donc s'il vous plait téléchargez avant de venir;

```
bash
vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box;
```

Sur une connexion peu rapide, de zéro à un build complète d'OpenJDK 9 peut prendre une heure (en utilisant un *MacBookPro 2013 avec 16Go et un SSD*).

Chargez VirtualBox et démarrez la machine.

##### Configuration de la VM Vagrant initiale
Une fois la VM démarrée et ses dépendances installées le script suivant va télécharger la dernière version du JDK 9, si déjà cloné alors une mise à jour est effectuée ce qui permet de gérer les exécutions multiples.

```bash
  $ vagrant ssh
  $ sh /vagrant/scripts/source-share-with-host.sh
```

##### Construction d'OpenJDK 9

```bash
  $ vagrant ssh
  $ cd /vagrant/sources/jdk9 ;
  $ bash get_source.sh ;
  $ bash configure ;
  $ make clean images ;
```  
```bash
  $ make test ;
```

Il y a aussi une [repo GitHub ](https://github.com/adoptopenjdk/adopt-openjdk-kiss-vagrant) avec un Vagrantfile et les scripts d'accompagnement.