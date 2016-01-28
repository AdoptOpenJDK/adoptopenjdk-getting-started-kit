# MacOS

** Pourquoi la configuration échoue lorsque freetype n'est pas trouvé ?**

```configure: error: Could not find freetype!  
configure exiting with result code 1```

<br/>
** Lorsque l'on essaye d'installer freetype on constate qu'il est déjà installé**

```
$ brew install freetype
Error: freetype-2.5.3_1 already installed
```

To install this version, first 
```brew unlink freetype```

*Solution: puisqu'il est déjà installer on configure comme ceci :*

```
$ bash configure –with-freetype-include=/usr/X11/include/freetype2 –with-freetype-lib=/usr/X11/lib
```
Une nouvelle configuration à été créée avec succès dans
```
[OpenJDK sourcesfolder]/jdk9/build/macosx-x86_64-normal-server-release
```
en utilisant ces paramètres

```
–with-freetype-include=/usr/X11/include/freetype2 –with-freetype-lib=/usr/X11/lib
```