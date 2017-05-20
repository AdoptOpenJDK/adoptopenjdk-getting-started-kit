# Verificar imagens

* Nota: *Esta etapa é aplicável se você já tiver imagens OpenJDK construídas ou carregadas previamente em seu repositório Docker local.*

Carregue o docker no respectivo ambiente usando o comando usual ```boot2docker up``` para os usuários *MacOS* e *Windows*. Para usuários de Linux isso é carregado durante a inicialização.

Execute os comandos abaixo:

```
$ docker images
```

Você verá algo como:
```
REPOSITORY                             TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
neomatrix369/openjdk9                  latest              5877e8efd939        4 days ago          5.82 GB
neomatrix369/full-image-openjdk9       latest              32b0a686e93b        4 days ago          5.82 GB
neomatrix369/base-image-openjdk9       latest              ce63b2673e6a        4 days ago          781.7 MB
phusion/baseimage                      latest              5a14c1498ff4        4 months ago        279.7 MB
```

Agora execute estes comandos:

```
$ sudo docker run -it --name openjdk9 neomatrix369/openjdk9  /bin/bash
```
Isso leva você para o shell dentro do container

```
$ sudo docker run -it --name openjdk9 neomatrix369/openjdk9 java -version
```
Isto irá executar o comando ```java``` e você verá a saída abaixo (apenas se encontrar ```java``` através das variáveis ​​de ambiente ```PATH``` ou ```JAVA_HOME```):

```
openjdk version "1.9.0-internal"
OpenJDK Runtime Environment (build 1.9.0-internal-_2015_06_04_06_46-b00)
OpenJDK 64-Bit Server VM (build 1.9.0-internal-_2015_06_04_06_46-b00, mixed mode)
```