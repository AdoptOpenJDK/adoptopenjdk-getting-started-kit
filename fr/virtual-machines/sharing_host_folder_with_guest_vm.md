# Partager un rep�rtoire de l'h�te avec la VM invit�e

Cette section d�crit comment acc�der au code source de Java dans une VM, depuis l'IDE tournant sur l'ordinateur h�te. De cette fa�on vous pouvez �crire dans votre environement et IDE pr�f�r�, puis passer dans la VM quand vous �tes pr�t � construire.

Tel que test� sur *Mac OSX 10.10* faisant tourner *VirtualBox 4.3.20* avec une VM Ubuntu_12.04_OpenJDK_dev_1.

Une approche plus id�ale serait d'utiliser les dossiers partag�s de VirtualBox et d'avoir la VM utiliser le dossier sur la machine h�te. Ceci � �t� tent� sans succ�s, il semble que l'environement de construction d'OpenJDK a des probl�mes pour utiliser un dossier partag�, particuli�rement la pr�compilation des en-t�tes C++. Pour le moment nous pouvons garder la VM active et acc�der ses fichiers depuis l'h�te via Samba, comme d�taill� ci-apr�s.


### 1. Configurer Samba sur la VM

Modifiez le fichier de configuration de Samba : 

```bash
sudo gedit /etc/samba/smb.conf
```

Trouvez la section **[homes]** et v�rifiez que les lignes suivantes ne sont pas comment�es 
:
```ini
[homes]
comment = Home Directories
browseable = yes
writable = yes
```
Red�marrez le service Samba :

```bash
sudo restart smbd
```

### 4. Donnez � la VM une IP statique accessible depuis la machine h�te

Dans le menu de la VM: **Machine > Network> Attached to:**
 - Dans la liste d�roulante **Attached to** s�lectionnez **Bridged Adapter**
 - Dans la liste d�roulante **Name** choisissez l'entr�e qui commence par **en0:**

D�finissez le sous-r�seau de la VM � l'identique de celui de l'h�te. Sur l'h�te lancez la commande `ifconfig` pour d�terminer le sous-r�seau, 200.200.0.xxx dans cet exemple. Sous Windows utilisez `ipconfig`. Choisissez une adresse inutilis�e, 200.200.0.129 dans cet exemple.

Dans la VM, d�finissez ces adresse IP, sous-r�seau et DNS depuis l'outil graphique **System Settings** comme suit :
 - Cliquez sur **Network**
 - Cliquez sur **Wired** dans la liste de gauche
 - Cliquez sur le bouton **Options**
 - Selectionnez l'onglet **IPv4**
 - Dans la liste d�roulante **Method** choisissez **Manual**
 - Sous **Addresses** cliquez sur **Add** et entrez :
  - l'adresse que vous avez choisie (200.200.0.129 dans cet exemple)
  - le masque r�seau (255.255.255.0 dans cet exemple)
  - la gateway ie l'adresse de votre routeur  (200.200.0.90 dans cet exemple)
  - vote serveur DNS ie l'adresse de votre routeur (200.200.0.90 dans cet exemple)
 - Enfin cliquez sur le bouton **Save**

Pour v�rifier les param�tres de votre r�seau, sur la machine h�te pinger la VM, dans cet exemple :
```bash
ping 200.200.0.129
```

### 3. Se connecter depuis la machine h�te
Mapper un lecteur / dossier partag� sur le point suivant :
 - Serveur: **openjdk** (ou l'adresse IP, 200.200.0.129 dans cet exemple, si cela ne fonctionne pas)
 - Utilisateu: **OpenJDK**

Exemple pour Windows : Mapper un lecteur vers **\\\\200.200.0.129\OpenJDK** 

Expemple pour Mac : Dans le Finder pressez CMD-K et connectez vous � **smb://200.200.0.129/openjdk**


Voyez [cet article](http://www.howtogeek.com/howto/ubuntu/share-ubuntu-home-directories-using-samba/) ou [celui-ci]( http://superuser.com/questions/241825/share-virtualbox-folders-in-reverse-guest-host) pour plus de d�tails.


### 4. Acc�dez au code depuis votre IDE favorit
Ayant partag� les sources de Java depuis une VM Ubuntu vers votre h�te, vous pouvez maintenant les voir et modifier dans votre �diteur favorit, ou un IDE tel que :
 * [IntelliJ](../source-code/loading_openjdk_in_intellij.md)
 * [Eclipse](../source-code/loading_openjdk_in_eclipse.md)
 * [Netbeans](../source-code/loading_openjdk_in_netbeans.md)

 