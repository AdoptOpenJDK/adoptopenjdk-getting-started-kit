# Copy Images

Images can be copied from drives or portable drives and loaded back into the local Docker repository.

**Save an image**
```
docker save -o <save image to path> <image name>
```

For e.g.
```
docker save -o base-image-openjdk9.tar neomatrix369/base-image-openjdk9:latest 
```
or
```
docker save neomatrix369/base-image-openjdk9:latest >  base-image-openjdk9.tar
```


**Load an image**
```
docker load -i <path to image tar file>
```
or 

```
docker load < <path to image tar file>
```