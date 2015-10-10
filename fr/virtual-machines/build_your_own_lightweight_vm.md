# Construire votre propre VM l�g�re

Une machine virtuelle simplifi�e et standardis�e utilis�e pour construire OpenJDK.


### D�marrage rapide

T�l�chargez et installez la derni�re version de *Vagrant 1.7.2 ou sup�rieur* depuis https://www.vagrantup.com/downloads.html.

Puis ex�cutez la ligne de commande suivante:

```
# Clonez la repo adopt-openjdk-kiss-vagrant
$ git clone https://github.com/neomatrix369/adopt-openjdk-kiss-vagrant.git

# Change vers un r�pertoire pour cr�er le Vagrantfile
$ cd adopt-openjdk-kiss-vagrant.git
$ vagrant init

# Lancez la machine
$ vagrant up

# ssh dans la VM
$ vagrant ssh

# dans le shell ssh
# Mapping in place: /vagrant/scripts/ ==> [currentfolder]/scripts
```

Observez les r�pertoires et scripts de cette repo, car ils peuvent �tre utiliser pour divers usages. Une fois ces instructions finies, allez � [Construire votre propre OpenJDK](../binaries/build_your_own_openjdk.md) pour continuer � construire OpenJDK.

*NB.* : Cela prends � peu pr�s **377Mo** donc s'il vous plait t�l�chargez avant de venir, de z�ro � une build compl�te d'OpenJDK 9 prends � peu pr�s une heure (en utilisant un *MacBookPro 2013 avec 16Go et un SSD*).

### Instructions d�taill�es

*So vous souhaitez reproduire ce qui pr�c�de et explorer toutes les technologies utilis�es pour contruire cette bo�te.

Les sections dans ce document sont ci-apr�s, tous les points sont requis, toutes les sections en **gras** donnent plus d'information ou des configurations optionelles. **Une r�f�rence � $ est un argument de la ligne de commande qui sera ex�cut�e dans une vm vagrant.**

  - Installer VirtualBox, Vagrant et Git
  - Booter la VM Vagrant
  - Configuration de la VM Vagrant initiale
  - Construction d'OpenJDK 9

## Installer Virtual Box, Vagrant et Git
Installer le logiciel, initialement cr�� et test� sur un Mac et les version utilis�es au 2015-01-18 sont :
  - Virtual Box v4.3.20 (https://www.virtualbox.org/wiki/Downloads)
  - Vagrant v1.7.1 (https://www.vagrantup.com/downloads.html)
  - Git v2.2.2 (http://git-scm.com/downloads)

## T�l�charger la VM depuis une repo dans le cloud
Une fois vagrant install�, lancez la ligne de commande suivante, cela prends 377Mo donc s'il vous plait t�l�chargez avant de venir;

```
bash
vagrant box add ubuntu-14.10-amd64 https://cloud-images.ubuntu.com/vagrant/utopic/current/utopic-server-cloudimg-amd64-vagrant-disk1.box;
```

Sur une connexion peu rapide, de z�ro � un build compl�te d'OpenJDK 9 peut prendre une heure (en utilisant un *MacBookPro 2013 avec 16Go et un SSD*).

Chargez VirtualBox et d�marrez la machine.

##### Configuration de la VM Vagrant initiale
Une fois la VM d�marr�e et ses d�pendances install�es le script suivant va t�l�charger la derni�re version du JDK 9, si d�j� clon� alors une mise � jour est effectu�e ce qui permet de g�rer les ex�cutions multiples.

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

Il y a aussi une [repo GitHub ](https://github.com/neomatrix369/adopt-openjdk-kiss-vagrant) avec un Vagrantfile et les scripts d'accompagnement.