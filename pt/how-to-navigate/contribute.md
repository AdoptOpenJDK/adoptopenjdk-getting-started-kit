# Como contribuir para este livro?

## Contribuir via GitBook

Crie uma conta no [gitbook.com](http://www.gitbook.com/login) e [envie uma solicitação para se tornar um colaborador](https://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/contributors.html) do [AdoptOpenJDK GitBook](http://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/)

[Documentações](http://help.gitbook.com/) e [como instalar o GitBook](https://github.com/GitbookIO/gitbook) localmente também devem ajudar no processo.

## Contribuir via GitHub

1. Faça um Fork do projeto
Visite este site para criar um fork: **https://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit#fork-destination-box**

2. Clone em sua máquina <br/>
```git clone git@github.com:{YOUR_GITHUB_ACCOUNT}/adoptopenjdk-getting-started-kit.git```

3. Adicione Upstream <br/>
```git remote add --track master upstream git://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit.git```

Agora você pode atualizar seu fork com o repositório original:
```git fetch upstream``` 
and 
```git merge upstream/master```

4. Comitar arquivos modificados <br/>
```git add <changes files/wild-card pattern>```<br/>
```git commit -am "mensagem descrevendo as alterações"```

5. Enviar arquivos
```git push```

6. Crie um pull request
Visite seu repositório no GitHub: https://github.com/{YOUR_GITHUB_ACCOUNT}/adoptopenjdk-getting-started-kit/pulls e clique no botão New Pull Request e crie um novo.

## Como identificar alterações no livro?

Temos dois [scripts](https://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit) na pasta raiz do repo que criam páginas markdown <b> What's changed </b>, como esta<br/> http://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/whatsChanged.html.

Os scripts geradores de markdown [What's changed](http://adoptopenjdk.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/whatsChanged.html) são chamados [whatsChanged.sh](https://github.com /adoptopenjdk/adoptopenjdk-getting-started-kit/blob/master/whatsChangedFor.sh) e [whatsChangedForAllLanguages.sh](https://github.com/adoptopenjdk/adoptopenjdk-getting-started-kit/blob/master/whatsChangedFor.sh).

Sinta-se livre para melhorá-los, desde que continuem a fazer o que fazem.

Consulte também [Feedback](../backup.md) e [Como contribuir para Adotar OpenJDK e OpenJDK?](how_to_contribute_to_adopt_openjdk_and_openjdk.md)