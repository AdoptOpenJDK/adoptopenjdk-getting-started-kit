# MacOS

** Why does the configuration fail when freetype is not found ?**

```configure: error: Could not find freetype!  
configure exiting with result code 1```

<br/>
** When we try to install freetype we find it is already installed**

```
$ brew install freetype
Error: freetype-2.5.3_1 already installed
```

To install this version, first 
```brew unlink freetype```

*Solutuon: since it is already installed we configure like this:*

```
$ bash configure –with-freetype-include=/usr/X11/include/freetype2 –with-freetype-lib=/usr/X11/lib
```
A new configuration has been successfully created in
```
[OpenJDK sourcesfolder]/jdk9/build/macosx-x86_64-normal-server-release
```
using configure arguments

```
–with-freetype-include=/usr/X11/include/freetype2 –with-freetype-lib=/usr/X11/lib
```