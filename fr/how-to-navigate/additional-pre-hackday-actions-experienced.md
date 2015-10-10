# Actions pr�-hackday aditionnelles pour participants exp�riment�s

##### Construisez votre propre VM

NB. : vous aurez besoin d'une bonne bande passante pour t�l�charger ces fichiers ainsi que suffisament de temps pour que la construction se termine. **Ceci n'est pas pr�vu pour �tre fait via une connexion en wifi.**

<br/>
[Construire votre propre VM](../virtual-machines/build_your_own_vm.md) <br/>
[Construire votre propre VM l�g�re](../virtual-machines/build_your_own_lightweight_vm.md)

<br/>
##### V�rifiez les VMs
- Chargez la VM dans VirtualBox
- Lancez la VM
- Lancez un programme quelconque dans cette VM
- Arr�tez la VM

##### T�l�chargez / copier les images de VMs
Les images peuvent �tre copier d'un disque � un autre ou t�l�charg�es depuis une repo centrale.

ou

##### Construisez les conteneurs
Visitez la section construction de []()

##### V�rifiez les conteneurs
Visitez la section v�rification de []()

##### V�rifiez votre installation et environement
Lancez la VM o le conteneur, naviguez vers les r�peroires jdk8 ou jdk9, et lancer les commandes :

```
bash configure
make clean images
```

Si une des ces commandes �choue alors c'est que l'environement d'OpenJDK n'est pas correctement configur� (ou que la build est cass�e dans le master).

<br/>
##### Enfin
Une fois terminer allez � la section [Comment naviguer et progresser ?](how-to-navigate-and-make-progress.md), et passez � l'�tape suivante.
