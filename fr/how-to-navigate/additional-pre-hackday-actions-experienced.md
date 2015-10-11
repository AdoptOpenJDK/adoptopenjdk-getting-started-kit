# Actions pré-hackday aditionnelles pour participants expérimentés

##### Construisez votre propre VM

Note : vous aurez besoin d'une bonne bande passante pour télécharger ces fichiers ainsi que suffisament de temps pour que la construction se termine. **Ceci n'est pas prévu pour être fait via une connexion en wifi.**

<br/>
[Construire votre propre VM](../virtual-machines/build_your_own_vm.md) <br/>
[Construire votre propre VM légère](../virtual-machines/build_your_own_lightweight_vm.md)

<br/>
##### Vérifiez les VMs
- Chargez la VM dans VirtualBox
- Lancez la VM
- Lancez un programme quelconque dans cette VM
- Arrêtez la VM

##### Téléchargez / copier les images de VMs
Les images peuvent être copier d'un disque à un autre ou téléchargées depuis une repo centrale.

ou

##### Construisez les conteneurs
Visitez la section  [Construire des images](../docker-images/build-images.md) sous Images Docker.

##### Vérifiez les conteneurs
Visitez la section  [Vérifier des images](../docker-images/check-images.md) sous Images Docker.

##### Vérifiez votre installation et environement
Lancez la VM o le conteneur, naviguez vers les réperoires jdk8 ou jdk9, et lancer les commandes :

```
bash configure
make clean images
```

Si une des ces commandes échoue alors c'est que l'environement d'OpenJDK n'est pas correctement configuré (ou que la build est cassée dans le master).

<br/>
##### Enfin
Une fois terminer allez à la section [Comment naviguer et progresser ?](how-to-navigate-and-make-progress.md), et passez à l'étape suivante.
