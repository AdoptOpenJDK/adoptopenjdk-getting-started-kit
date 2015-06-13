# Build OpenJDK 8

*Building OpenJDK from scratch*

In case you don’t have an OpenJDK8 on your VM (jdk8 or jdk8_tl folder) i.e.:

```$ cd $HOME/sources/jdk8_tl```

or

```$ cd $HOME/sources/jdk8```

or 

```$ cd $HOME/dev/jdk8```

then do the following:

```
$ cd $HOME/sources
or
$ cd $HOME/dev

$ hg clone http://hg.openjdk.java.net/jdk8/jdk8 jdk8
$ cd jdk8
$ chmod +x get_source.sh
$ ./get_source.sh
```
And you will see the below results:

```
# Repositories:  ./corba . ./hotspot ./jaxp ./jaxws ./jdk ./langtools ./nashorn 
              ./corba:   cd ./corba && hg pull -u
                    .:   cd . && hg pull -u
               ./jaxp:   cd ./jaxp && hg pull -u
            ./hotspot:   cd ./hotspot && hg pull -u
              ./jaxws:   cd ./jaxws && hg pull -u
                ./jdk:   cd ./jdk && hg pull -u
          ./langtools:   cd ./langtools && hg pull -u
            ./nashorn:   cd ./nashorn && hg pull -u
.
.
.
hotspot:   added 1 changesets with 3 changes to 3 files
            ./hotspot:   3 files updated, 0 files merged, 0 files removed, 0 files unresolved
Waiting for processes ( 19269 19296 19308 19321 19341 19347 19360 ) to terminate nicely!
          ./langtools:   13 files updated, 0 files merged, 0 files removed, 0 files unresolved
                ./jdk:   24 files updated, 0 files merged, 1 files removed, 0 files unresolved
.
.
.
```
Take a look at this section [get_source page](https://java.net/projects/adoptopenjdk/pages/GetSource):

* [Linux (Ubuntu/Debian)](https://java.net/projects/adoptopenjdk/pages/GetSource#Debian/Ubuntu)

* [MacOS X](https://java.net/projects/adoptopenjdk/pages/GetSource#Mac_OS_X) <br/>
Note: if you’re using Mac OS X 10.8.5 with XCode 5 you’ll need to follow one of the [solutions](http://mail.openjdk.java.net/pipermail/build-dev/2013-September/010262.html). 

* [Windows](https://java.net/projects/adoptopenjdk/pages/GetSource#MS_Windows)<br/>
In case Windows or MacOS X users have issues with installing or downloading the sources, it is a good idea to create your own VM using Oracle’s VirtualBox and [follow the instructions](https://java.net/projects/adoptopenjdk/pages/AdoptOpenJDKVM). Build and continue with the rest of the instructions till the Get Sources page (and then follow the above steps under Download source by running ```sh getSource.sh```).

Configure OpenJDK setup (Optional if you haven’t run it)

```$ bash configure```

Clean build with Images

```$ make clean images```

or

```$ make clean images LOG=debug     // to display DEBUG information ```

Build individual components by doing the below:

```
$ make jdk
$ make hotspot
$ make test
```