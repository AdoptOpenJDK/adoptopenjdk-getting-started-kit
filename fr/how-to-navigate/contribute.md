# Comment contribuer à ce livre ?

## Contribuer via GitBook

Créez un compte sur [Gitbook.com](http://www.gitbook.com/login) et [demandez à devenir un collaborateur](https://www.gitbook.com/book/adoptopenjdk/adoptopenjdk-getting-started-kit/contact) du [Adopt OpenJDK GitBook](http://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/)

Un peu de [documentation](http://help.gitbook.com/) et [comment installer GitBook](https://github.com/GitbookIO/gitbook) localement devrait aider.

## Contribuer via GitHub

1. Forker
Allez sur ce site pour forker : **https://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit#fork-destination-box** 

2. Clonez votre version sur votre espace de travail <br/>
```git clone git@github.com:{VOTRE_COMPTE_GITHUB}/adoptopenjdk-getting-started-kit.git```

3. Ajoutez Upstream <br/>
```git remote add --track master upstream git://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit.git```

Maintenant vous pouvez mettre à jour votre fork à partir de la repo d'origine :
```git fetch upstream``` 
et 
```git merge upstream/master```

4. Commitez les fichiers modifiés <br/>
```git add <fichiers modifiés / noms avec jokers>```<br/>
```git commit -am "ajoutez une description significatives de vos changements"```

5. Poussez les fichiers
```git push```

6. Créez une pull request
Allez sur le site de votre repo sur  GitHub: https://github.com/{VOTRE_COMPTE_GITHUB}/adoptopenjdk-getting-started-kit/pulls et cliquez sur le bouton New Pull Request button (nouvelle pull request) pour en créer une.


## Comment identifier des changements à ce livre ?

Nous avons deux [scripts](https://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit) dans le répertoire racine de la repo, qui créent une page markdown <b>Quels changements</b>, [tel celle-ci](http://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/whatsChanged.html).

Les scripts générateurs de markdown de [Quels changements](http://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/whatsChanged.html) s'appellent [whatsChanged.sh](https://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit/blob/master/whatsChangedFor.sh) et [whatsChangedForAllLanguages.sh](https://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit/blob/master/whatsChangedFor.sh).

Ne vous gêner pas pour l'améliorer, tant qu'il continue à faire ce qu'il fait actuellement et plus.

Voyez également [Retours](../feedback.md) et [Comment contribuer à Adopt OpenJDK et OpenJDK ?](how_to_contribute_to_adopt_openjdk_and_openjdk.md)