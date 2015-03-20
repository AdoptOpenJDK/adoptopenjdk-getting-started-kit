# OpenJDK9 directory structures

Take a look at some of the [tree structures](https://gist.github.com/neomatrix369/5be36b5af8768353eca4) of the various folders within the OpenJDK9 directory structure.

```
$ tree -fL 2 build
```
```
build
└── build/linux-x86_64-normal-server-release
    ├── build/linux-x86_64-normal-server-release/bootcycle-spec.gmk
    ├── build/linux-x86_64-normal-server-release/build.log
    ├── build/linux-x86_64-normal-server-release/build.log.old
    ├── build/linux-x86_64-normal-server-release/buildtools
    ├── build/linux-x86_64-normal-server-release/compare.sh
    ├── build/linux-x86_64-normal-server-release/config.h
    ├── build/linux-x86_64-normal-server-release/config.log
    ├── build/linux-x86_64-normal-server-release/config.status
    ├── build/linux-x86_64-normal-server-release/hotspot
    ├── build/linux-x86_64-normal-server-release/hotspot-spec.gmk
    ├── build/linux-x86_64-normal-server-release/images
    ├── build/linux-x86_64-normal-server-release/jdk
    ├── build/linux-x86_64-normal-server-release/Makefile
    ├── build/linux-x86_64-normal-server-release/make-support
    ├── build/linux-x86_64-normal-server-release/nashorn
    ├── build/linux-x86_64-normal-server-release/source_tips
    ├── build/linux-x86_64-normal-server-release/spec.gmk
    ├── build/linux-x86_64-normal-server-release/spec.sh
    └── build/linux-x86_64-normal-server-release/support
```
---
``` 
$ tree -fL 2 images
```
```
images
├── images/demo
│   ├── images/demo/applets
│   ├── images/demo/jfc
│   ├── images/demo/jvmti
│   ├── images/demo/management
│   ├── images/demo/nbproject
│   ├── images/demo/README
│   └── images/demo/scripting
├── images/jdk
│   ├── images/jdk/ASSEMBLY_EXCEPTION
│   ├── images/jdk/bin
│   ├── images/jdk/conf
│   ├── images/jdk/demo
│   ├── images/jdk/include
│   ├── images/jdk/jrt-fs.jar
│   ├── images/jdk/lib
│   ├── images/jdk/LICENSE
│   ├── images/jdk/man
│   ├── images/jdk/release
│   ├── images/jdk/sample
│   ├── images/jdk/src.zip
│   └── images/jdk/THIRD_PARTY_README
├── images/_jdk-jimages-create.marker
├── images/jdk-sorted-modules
├── images/jre
│   ├── images/jre/ASSEMBLY_EXCEPTION
│   ├── images/jre/bin
│   ├── images/jre/conf
│   ├── images/jre/lib
│   ├── images/jre/LICENSE
│   ├── images/jre/man
│   ├── images/jre/release
│   └── images/jre/THIRD_PARTY_README
├── images/_jre-jimages-create.marker
├── images/jre-sorted-modules
├── images/sample
│   ├── images/sample/annotations
│   ├── images/sample/forkjoin
│   ├── images/sample/jmx
│   ├── images/sample/lambda
│   ├── images/sample/nbproject
│   ├── images/sample/nio
│   ├── images/sample/README
│   ├── images/sample/scripting
│   └── images/sample/try-with-resources
└── images/sec-bin.zip
```
---