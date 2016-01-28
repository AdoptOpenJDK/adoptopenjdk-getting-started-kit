# Mercurial

**Mon OpenJDK 8 ne se construit pas, pourquoi ? J'ai un “Http: Error 404: Not Found”.**

Il y a eu un changement de l'adresse vers la repo mercurial pour OpenJDK 8, elle a changée de

http://hg.openjdk.java.net/jdk8/tl

vers 

http://hg.openjdk.java.net/jdk8/jdk8

jdk8 Updates est disponible depuis 
http://hg.openjdk.java.net/jdk8u/jdk8u

Toutes les commandes hg clone devraient utiliser cette dernière adresse, une solution à ce problème peut être trouver sous Télécharger les sources en lançant... (```#heading=h.fuqz6rlsthji```).


**J'ai “HTTP Error 404: Not Found” lors du téléchargement des sources (quand je lance ./get_sources.sh) pour plusieurs repos**

*Solution 1*

Modifiez tous les .hg/hgrc file dans la repo racine ($HOME/SOURCE/jdk8_tl) ainsi que dans les repos hotspot, jaxws, jaxp, corba, nashorn, jdk, langtools, et changez toutes le références à .../tl/... en .../jdk8/… Par exemple, changez le paramètre suivant,

```
default = http://hg.openjdk.java.net/jdk8/tl/hotspot
```
en 
```
default = http://hg.openjdk.java.net/jdk8/jdk8/hotspot
```
dans la repo hotspot, puis sauvez le fichier. Renomez le répertoire jdk8_tl en jdk8 :

```
$ cd ..
$ mv jdk8_tl jdk8
```

- ou -

*Solution 2*
```
$ cd ..

$ mv jdk8_tl jdk8_tl_backup

$ hg clone http://hg.openjdk.java.net/jdk8/jdk8

$ cd jdk8

$ chmod u+x get_source.sh

$ ./get_source.sh

$ bash configure
```

Si les instructions ci-dessus fonctionnent, supprimez le répertoire de sauvegarde avec

```
$ rm -fr jdk8_tl_backup
```

Toutes les références à jdk8_tl changeront en références à jdk8. 