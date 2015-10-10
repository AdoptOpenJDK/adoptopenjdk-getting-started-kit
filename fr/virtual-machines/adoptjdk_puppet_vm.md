# Puppet Vagrant OpenJDK 8 

**S'il vous plaît ayez à l'esprit que ces fichiers font plusieurs giga, donc téléchargez les uniquement sur une connexion haut-débit et non lors d'un lab.**

Description
===========
Ubuntu 12.04 Sandbox est un environement de développement Puppet basé sur [Vagrant](http://vagrantup.com/)
et utilisé pour lancer et tester des modules OpenJDK 8.

Il n'a jamais été aussi facile de construire OpenJDK. vagrant up vous lancera o/
![OpenJDK](https://soujavablog.files.wordpress.com/2015/05/openjdk.jpg)

Prérequis
============

Pour utiliser ces instructions vous devez avoir les éléments suivant installés et fonctionels :

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant 1.7+](http://vagrantup.com/)
* [Git](http://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

Utilisation
===========


Exécutez Git Clone
-------------

```
git clone https://github.com/soujava/adoptjdk-puppet-vm.git
```

Lancement initial
---------------

Pour obtenir l'environement bac-à-sable Puppet, lancez la commande suivante dans le répertoire adoptjdk-puppet-vm:

```
    $ vagrant up
```

Puppet installera automatiquement Mercurial et OpenJDK 7,
clonera le projet OpenJDK 8, exécutera ```get_source.sh``` afin de télécharger les sources d'OpenJDK 8,
lancera ```bash configure``` pour s'assurer que tout est prêt pour construire and lancera ```make images``` afin de construire les images JDK 8.

*N.B. ce process peut prendre jusqu'à 50 minutes. Testé sur un 2014 250GB SSD 16GB RAM.


Si tout va bien, vous devriez voir les messages de log suivants :

```
==> default: ## Finished images (build time 00:00:49)
==> default: ----- Build times -------
==> default: Start 2015-05-01 20:04:30
==> default: End   2015-05-01 20:51:58
==> default: 00:00:42 corba
==> default: 00:00:53 demos
==> default: 00:34:31 hotspot
==> default: 00:00:49 images
==> default: 00:00:26 jaxp
==> default: 00:00:38 jaxws
==> default: 00:08:28 jdk
==> default: 00:00:49 langtools
==> default: 00:00:12 nashorn
==> default: 00:47:28 TOTAL
==> default: -------------------------
==> default: Finished building OpenJDK for target 'images'
```