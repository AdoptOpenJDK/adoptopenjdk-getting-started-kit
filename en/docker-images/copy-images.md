# Copy Images

Images can be copied from drives or portable drives and loaded back into the local Docker repository.

**Save an image**
```
docker save -o <save image to path> <image name>
```

**Load an image**
```
docker load -i <path to image tar file>
```
or 

```
docker load < <path to image tar file>
```