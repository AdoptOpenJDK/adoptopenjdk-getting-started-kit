# Comment contribuer � ce livre ?

## Contribuer via GitBook

Cr�ez un compte sur [Gitbook.com](http://www.gitbook.com/login) et [demandez � devenir un collaborateur](https://www.gitbook.com/book/neomatrix369/adoptopenjdk-getting-started-kit/contact) du [Adopt OpenJDK GitBook](http://neomatrix369.gitbooks.io/adoptopenjdk-getting-started-kit/)

Un peu de [documentation](http://help.gitbook.com/) et [comment installer GitBook](https://github.com/GitbookIO/gitbook) localement devrait aider.

## Contribuer via GitHub

1. Forker
Allez sur ce site pour forker : **https://github.com/neomatrix369/adoptopenjdk-getting-started-kit#fork-destination-box** 

2. Clonez votre version sur votre espace de travail <br/>
```git clone git@github.com:{VOTRE_COMPTE_GITHUB}/adoptopenjdk-getting-started-kit.git```

3. Ajoutez Upstream <br/>
```git remote add --track master upstream git://github.com/neomatrix369/adoptopenjdk-getting-started-kit.git```

Maintenant vous pouvez mettre � jour votre fork � partir de la repo d'origine :
```git fetch upstream``` 
et 
```git merge upstream/master```

4. Commitez les fichiers modifi�s <br/>
```git add <fichiers modifi�s / noms avec jokers>```<br/>
```git commit -am "ajoutez une description significatives de vos changements"```

5. Poussez les fichiers
```git push```

6. Cr�ez une pull request
Allez sur le site de votre repo sur  GitHub: https://github.com/{VOTRE_COMPTE_GITHUB}/adoptopenjdk-getting-started-kit/pulls et cliquez sur le bouton New Pull Request button (nouvelle pull request) pour en cr�er une.


## Comment identifier des changements � ce livre ?

Nous avons deux [scripts](https://github.com/neomatrix369/adoptopenjdk-getting-started-kit) dans le r�pertoire racine de la repo, qui cr�ent une page markdown <b>Quels changements</b>, [tel celle-ci](http://neomatrix369.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/whatsChanged.html).

Les scripts g�n�rateurs de markdown de [Quels changements](http://neomatrix369.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/whatsChanged.html) s'appellent [whatsChanged.sh](https://github.com/neomatrix369/adoptopenjdk-getting-started-kit/blob/master/whatsChangedFor.sh) et [whatsChangedForAllLanguages.sh](https://github.com/neomatrix369/adoptopenjdk-getting-started-kit/blob/master/whatsChangedFor.sh).

