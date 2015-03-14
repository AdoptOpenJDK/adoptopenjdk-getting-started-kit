# Goodies for the die-hard OpenJDK-er

Bash scripts that make make life easier
```updateAndCleanBuildOpenJDK.sh``` - run once in a while or if you want a clean build

```
./get_source.sh
bash configure
make clean images
```

```updateCleanBuildAndTestOpenJDK.sh``` - run once in a while or if you want a clean build & test

```
./get_source.sh
bash configure
make clean images
make test```


```updateAndBuildOpenJDK.sh``` - run regularly (incremental build)

```
./get_source.sh
bash configure
make images```


```updateBuildAndTestOpenJDK.sh``` - run often

```
./get_source.sh
bash configure
make images
make test```
