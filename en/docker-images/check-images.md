# Check Images

This step is applicable if you already have OpenJDK images built or loaded into your local Docker repository from previous actions.

Load up docker in the respective environment using the usual ```boot2docker up``` command for *MacOS* and *Windows* users. For Linux users this is loaded are boot time.

Perform the below commands:

```
$ docker images
```

You get something like the below:
```
REPOSITORY                             TAG                 IMAGE ID            CREATED             VIRTUAL SIZE
neomatrix369/full-image-openjdk9       latest              32b0a686e93b        4 days ago          5.82 GB
neomatrix369/base-image-openjdk9       latest              ce63b2673e6a        4 days ago          781.7 MB
phusion/baseimage                      latest              5a14c1498ff4        4 months ago        279.7 MB
```

You get something like the below: