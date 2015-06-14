# Copy Images

Images can be copied from drives or portable drives and loaded back into the local Docker repository.

**Save an image**
```
docker save -o <save image to path> <image name>
```
or
```
docker save <image name> > <save image to path>
```

For e.g.
```
docker save -o base-image-openjdk9.tar neomatrix369/openjdk9-base-image:latest 
```
or
```
docker save neomatrix369/openjdk9-base-image:latest >  openjdk9-base-image.tar
```
or

```
docker save neomatrix369/openjdk9-base-image:latest | gzip > openjdk9-base-image.tar.gz
```

And ```openjdk9-base-image.tar``` or ```openjdk9-base-image.tar.gz``` are created in the folder where the command is executed.

**Load an image**
```
docker load -i <path to image tar file>
```
or 

```
docker load < <path to image tar file>
```

For e.g.
```
docker load -i openjdk9-base-image.tar 
```
or
```
docker load < openjdk9-base-image.tar
```
or

```
docker load < gzip < openjdk9-base-image.tar.gz
```