# Vérifier des images

*NB.* Cette étape est applicable si vous avez déjà des images OpenJDK de construites ou de chargées dans votre repo Docker locale après les actions précédentes.

Chargez Docker dans votre environement en utilisant la commande habituelle ```boot2docker up``` pour les utilisateurs *MacOS* et *Windows*. Pour les utilisateurs Linux c'est chargé lors du boot.

Executez les commandes ci-après :

```
$ docker images
```

Vous obtiendrez quelque chose comme ce qui suit :
```
REPOSITORY                             TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
neomatrix369/openjdk9       latest              5877e8efd939        4 days ago          5.82 GB
neomatrix369/full-image-openjdk9       latest              32b0a686e93b        4 days ago          5.82 GB
neomatrix369/base-image-openjdk9       latest              ce63b2673e6a        4 days ago          781.7 MB
phusion/baseimage                      latest              5a14c1498ff4        4 months ago        279.7 MB
```

Maintenant lancez ces commandes :

```
$ sudo docker run -it --name openjdk9 neomatrix369/openjdk9  /bin/bash
```
ceci vous ammène dans le shell bash tournant dans le conteneur

```
$ sudo docker run -it --name openjdk9 neomatrix369/openjdk9 java -version
```
ceci lancera la commmande ```java``` et donnera la sortie suivante (uniquement si ```java``` est trouvé via les variables d'environement ```PATH``` ou ```JAVA_HOME```) :

```
openjdk version "1.9.0-internal"
OpenJDK Runtime Environment (build 1.9.0-internal-_2015_06_04_06_46-b00)
OpenJDK 64-Bit Server VM (build 1.9.0-internal-_2015_06_04_06_46-b00, mixed mode)
```

