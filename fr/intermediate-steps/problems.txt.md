# ProblemList.txt

jtreg fournis un support direct pour le fichier ProblemList.txt utilisé pour identifier les tests problématiques dans la suite de régression ```jdk/test/```. Précédemment, il était converti par ```test/Makefile``` en une liste d'exclusions; maintenant, le fichier peut être directement utilisé par l'option ```-exclude```.

C'est également un fichier dans lequel il faut regarder pour trouver des choses à faire dans les 'tests' et 'jtreg', regardez ci-dessous pour ce que vous avez pour votre version d'OpenJDK :

```
$ cd $HOME/sources/jdk8_tl
$ tree -f | grep ProblemList.txt
│   │   ├── ./jdk/test/ProblemList.txt   ⇐ ce que l'on a
```

or 

```
$ find . -name "ProblemList.txt"
./jdk/test/ProblemList.txt               ⇐ ce que l'on a
```

Regardez le contenu de ce fichier pour voir comment les tests qui ont besoin d'être exclus sont définis. Ce fichier est maintenant disponible dans le répertoire ```jdk/test```.
