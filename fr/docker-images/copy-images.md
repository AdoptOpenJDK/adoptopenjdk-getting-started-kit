# Copier des images

Les images peuvent �tre copi� depuis un disque ou un disque externe et import� dans une repo Docker locale.

**Sauvegarder une image**
```
docker save -o <chemin de sauvergarde de l'image> <nom de l'image>
```
ou
```
docker save <nom de l'image> > <chemin de sauvergarde de l'image>
```

Par exemple :
```
docker save -o base-image-openjdk9.tar neomatrix369/openjdk9-base-image:latest 
```
ou
```
docker save neomatrix369/openjdk9-base-image:latest >  openjdk9-base-image.tar
```
ou

```
docker save neomatrix369/openjdk9-base-image:latest | gzip > openjdk9-base-image.tar.gz
```

et ```openjdk9-base-image.tar``` ou ```openjdk9-base-image.tar.gz``` sont cr��s dans le r�pertoire o� la commande est lanc�e.

**Charger une image**
```
docker load -i <chemin du fichier tar de l'image>
```
ou 

```
docker load < <chemin du fichier tar de l'image>
```

Par exemple :
```
docker load -i openjdk9-base-image.tar 
```
ou
```
docker load < openjdk9-base-image.tar
```
ou

```
docker load < gzip < openjdk9-base-image.tar.gz
```