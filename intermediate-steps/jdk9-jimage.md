# JDK9 - JImage

```
$ cd ./sources/jdk9/build/linux-x86_64-normal-server-release/images/jdk/bin
```

```
$ ./jimage --help
Usage: jimage <extract|recreate|info|list|verify> <options> jimage...
 
  extract  - Extract all jimage entries into separate files into the directory
             specified by --dir=<directory> (default=.)
  recreate - Reconstructs a jimage from an extracted directory (--dir)
  info     - Prints information specified in the jimage header.
  list     - Prints the names of all the entries in the jimage.  When used with
             --verbose will also print entry attributes ex. size and offset.
  verify   - Reports errors on any .class entries that dont verify as classes.
 
Possible options include:
  --dir                                Target directory for create/expand
  --help                               Print this usage message
  --verbose                            Verbose listing
  --version                            Version information
 ```