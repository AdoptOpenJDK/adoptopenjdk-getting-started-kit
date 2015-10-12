# Partager un repértoire de l'hôte avec la VM invitée

Cette section décrit comment accéder au code source de Java dans une VM, depuis l'IDE tournant sur l'ordinateur hôte. De cette façon vous pouvez écrire dans votre environement et IDE préféré, puis passer dans la VM quand vous êtes prêt à construire.

Tel que testé sur *Mac OSX 10.10* faisant tourner *VirtualBox 4.3.20* avec une VM Ubuntu_12.04_OpenJDK_dev_1.

Une approche plus idéale serait d'utiliser les dossiers partagés de VirtualBox et d'avoir la VM utiliser le dossier sur la machine hôte. Ceci à été tenté sans succès, il semble que l'environement de construction d'OpenJDK a des problèmes pour utiliser un dossier partagé, particulièrement la précompilation des en-têtes C++. Pour le moment nous pouvons garder la VM active et accéder ses fichiers depuis l'hôte via Samba, comme détaillé ci-après.


### 1. Configurer Samba sur la VM

Modifiez le fichier de configuration de Samba : 

```bash
sudo gedit /etc/samba/smb.conf
```

Trouvez la section **[homes]** et vérifiez que les lignes suivantes ne sont pas commentées 
:
```ini
[homes]
comment = Home Directories
browseable = yes
writable = yes
```
Redémarrez le service Samba :

```bash
sudo restart smbd
```

### 4. Donnez à la VM une IP statique accessible depuis la machine hôte

Dans le menu de la VM: **Machine > Network> Attached to:**
 - Dans la liste déroulante **Attached to** sélectionnez **Bridged Adapter**
 - Dans la liste déroulante **Name** choisissez l'entrée qui commence par **en0:**

Définissez le sous-réseau de la VM à l'identique de celui de l'hôte. Sur l'hôte lancez la commande `ifconfig` pour déterminer le sous-réseau, 200.200.0.xxx dans cet exemple. Sous Windows utilisez `ipconfig`. Choisissez une adresse inutilisée, 200.200.0.129 dans cet exemple.

Dans la VM, définissez ces adresse IP, sous-réseau et DNS depuis l'outil graphique **System Settings** comme suit :
 - Cliquez sur **Network**
 - Cliquez sur **Wired** dans la liste de gauche
 - Cliquez sur le bouton **Options**
 - Selectionnez l'onglet **IPv4**
 - Dans la liste déroulante **Method** choisissez **Manual**
 - Sous **Addresses** cliquez sur **Add** et entrez :
  - l'adresse que vous avez choisie (200.200.0.129 dans cet exemple)
  - le masque réseau (255.255.255.0 dans cet exemple)
  - la gateway ie l'adresse de votre routeur  (200.200.0.90 dans cet exemple)
  - vote serveur DNS ie l'adresse de votre routeur (200.200.0.90 dans cet exemple)
 - Enfin cliquez sur le bouton **Save**

Pour vérifier les paramètres de votre réseau, sur la machine hôte pinger la VM, dans cet exemple :
```bash
ping 200.200.0.129
```

### 3. Se connecter depuis la machine hôte
Mapper un lecteur / dossier partagé sur le point suivant :
 - Serveur: **openjdk** (ou l'adresse IP, 200.200.0.129 dans cet exemple, si cela ne fonctionne pas)
 - Utilisateu: **OpenJDK**

Exemple pour Windows : Mapper un lecteur vers **\\\\200.200.0.129\OpenJDK** 

Expemple pour Mac : Dans le Finder pressez CMD-K et connectez vous à **smb://200.200.0.129/openjdk**


Voyez [cet article](http://www.howtogeek.com/howto/ubuntu/share-ubuntu-home-directories-using-samba/) ou [celui-ci]( http://superuser.com/questions/241825/share-virtualbox-folders-in-reverse-guest-host) pour plus de détails.


### 4. Accédez au code depuis votre IDE favori
Ayant partagé les sources de Java depuis une VM Ubuntu vers votre hôte, vous pouvez maintenant les voir et modifier dans votre éditeur favorit, ou un IDE tel que :
 * [IntelliJ](../source-code/loading_openjdk_in_intellij.md)
 * [Eclipse](../source-code/loading_openjdk_in_eclipse.md)
 * [NetBeans](../source-code/loading_openjdk_in_netbeans.md)

 