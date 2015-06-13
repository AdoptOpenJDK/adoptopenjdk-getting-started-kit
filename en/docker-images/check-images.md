# Check Images

*Note:* This step is applicable if you already have OpenJDK images built or loaded into your local Docker repository from previous actions.

Load up docker in the respective environment using the usual ```boot2docker up``` command for *MacOS* and *Windows* users. For Linux users this is loaded are boot time.

Perform the below commands:

```
$ docker images
```

You get something like the below:
```
REPOSITORY                             TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
neomatrix369/openjdk9       latest              5877e8efd939        4 days ago          5.82 GB
neomatrix369/full-image-openjdk9       latest              32b0a686e93b        4 days ago          5.82 GB
neomatrix369/base-image-openjdk9       latest              ce63b2673e6a        4 days ago          781.7 MB
phusion/baseimage                      latest              5a14c1498ff4        4 months ago        279.7 MB
```

Now run these commands:

```
$ sudo docker run -it --name openjdk9 neomatrix369/openjdk9  /bin/bash
```
this takes you to the bash shell running in the container

```
$ sudo docker run -it --name openjdk9 neomatrix369/openjdk9 java -version
```
this will run the ```java``` command give the below output (only if it finds ```java``` via the ```PATH``` or ```JAVA_HOME``` environment variables) :

```
openjdk version "1.9.0-internal"
OpenJDK Runtime Environment (build 1.9.0-internal-_2015_06_04_06_46-b00)
OpenJDK 64-Bit Server VM (build 1.9.0-internal-_2015_06_04_06_46-b00, mixed mode)
```

