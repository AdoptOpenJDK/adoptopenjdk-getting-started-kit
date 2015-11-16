# Jak współtworzyć tę książkę ?

## Współpracuj przez GitBook

Stwórz konto na [Gitbook.com](http://www.gitbook.com/login) i [wyślij żądanie, by stać się współpracownikiem](https://www.gitbook.com/book/adoptopenjdk/adoptopenjdk-getting-started-kit/contact) do [Adopt OpenJDK GitBook](http://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/)

[Dokumentacja](http://help.gitbook.com/) i [jak zainstalować GitBook](https://github.com/GitbookIO/gitbook) lokalnie powinny również pomóc w procesie.

## Współpracuj przez GitHub

1. Stworzenie fork
Odwiedź tę stronę, aby stworzyć fork: **https://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit#fork-destination-box** 

2. Zkopiuj wersję do przestrzeni roboczej <br/>
```git clone git@github.com:{YOUR_GITHUB_ACCOUNT}/adoptopenjdk-getting-started-kit.git```

3. Dodaj Upstream <br/>
```git remote add --track master upstream git://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit.git```

Teraz możesz zaktualizować swój fork z oryginalnym repozytorium:
```git fetch upstream``` 
oraz 
```git merge upstream/master```

4. Zakommituj zmodyfikowane pliki <br/>
```git add <changes files / wild-card pattern>```<br/>
```git commit -am "meaningful description about your changes"```

5. Wyślij pliki
```git push```

6. Stwórz pull request
Odwiedź repozytorium na GitHub: https://github.com/{YOUR_GITHUB_ACCOUNT}/adoptopenjdk-getting-started-kit/pulls i kliknij przycisk Nowy Pull Request.
