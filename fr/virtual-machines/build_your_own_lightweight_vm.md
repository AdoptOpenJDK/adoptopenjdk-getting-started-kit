# Construire votre propre VM légère

Une machine virtuelle simplifiée et standardisée utilisée pour construire OpenJDK.


### Démarrage rapide

Téléchargez et installez la dernière version de *Vagrant 1.7.2 ou supérieur* depuis https://www.vagrantup.com/downloads.html.

Puis exécutez la ligne de commande suivante:

```
$ vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box";
```

Cela prends à peu près **377Mo** donc s'il vous plait téléchargez avant de venir, de zéro à une build complète prends à peu près une heure (en utilisant un *MacBookPro 2013 avec 16Go et un SSD*).

### Instructions détaillées

*So vous souhaitez reproduire ce qui précède et explorer toutes les technologies utilisées pour contruire cette boîte.

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
vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box";
```

Sur une connexion peu rapide, de zéro à un build complète d'OpenJDK 9 peut prendre une heure (en utilisant un *MacBookPro 2013 avec 16Go et un SSD*).

Chargez VirtualBox et démarrez la machine.

##### Configuration de la VM Vagrant initiale
Une fois la VM démarrée et ses dépendances installées le script suivant va télécharger la dernière version du JDK 9, si déjà cloné alors une mise à jour est effectuée ce qui permet de gérer les exécutions multiples.

```bash
  $ vagrant ssh
  $ /vagrant/scripts/source.sh
```

##### Construction d'OpenJDK 9

```bash
  $ vagrant ssh
  $ cd ~/source/jdk9 ;
  $ bash get_source.sh ;
  $ bash configure ;
  $ make clean images ;
```  
```bash
  $ make test ;
```