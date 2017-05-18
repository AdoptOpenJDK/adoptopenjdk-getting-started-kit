# ProblemList.txt

jtreg now provides direct support for the ProblemList.txt file used to identify problematic tests in the ```jdk/test/``` regression test suite. Previously, it was processed by ```test/Makefile``` into an exclude list; now, the file can be given directly to the ```-exclude``` option.

Its also a file to look into when looking for things to do in the areas of ‘testing’ and ‘jtreg’, try the below to see what you get on your version of OpenJDK:

```
$ cd $HOME/sources/jdk8_tl
$ tree -f | grep ProblemList.txt
│   │   ├── ./jdk/test/ProblemList.txt   ⇐ what we get
```

or 

```
$ find . -name "ProblemList.txt"
./jdk/test/ProblemList.txt               ⇐ what we get
```

Have a look at the contents of this file to see how tests that need to be excluded are defined. As of now this file is only available in the ```jdk/test``` folder.

