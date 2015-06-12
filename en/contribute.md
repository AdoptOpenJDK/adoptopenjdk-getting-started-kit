# How to contribute to this book ?

## Contribute via GitBook

Create an account on [Gitbook.com](http://www.gitbook.com/login) and [request to become a collaborator](https://www.gitbook.com/book/neomatrix369/adoptopenjdk-getting-started-kit/contact) to the [Adopt OpenJDK GitBook](http://neomatrix369.gitbooks.io/adoptopenjdk-getting-started-kit/)

Some [documentation](http://help.gitbook.com/) and [how to install GitBook](https://github.com/GitbookIO/gitbook) locally should also help in the process.

## Contribute via GitHub

1. Create a fork
Visit this website to create a fork: **https://github.com/neomatrix369/adoptopenjdk-getting-started-kit#fork-destination-box** 

2. Clone your version into your workspace <br/>
```git clone git@github.com:{YOUR_GITHUB_ACCOUNT}/adoptopenjdk-getting-started-kit.git```

3. Add Upstream <br/>
```git remote add --track master upstream git://github.com/neomatrix369/adoptopenjdk-getting-started-kit.git```

Now you can update your fork with the original repository:
```git fetch upstream``` 
and 
```git merge upstream/master```

4. Commit modified files <br/>
```git add <changes files / wild-card pattern>```<br/>
```git commit -am "meaningful description about your changes"```

5. Push files
```git push```

6. Create a pull request
Visit your repository on GitHub: https://github.com/{YOUR_GITHUB_ACCOUNT}/adoptopenjdk-getting-started-kit/pulls and click on New Pull Request button and create a new one.

## How to identify changes to the book ?

We have two [scripts](https://github.com/neomatrix369/adoptopenjdk-getting-started-kit) in the root folder of the repo, that creates a <b>What's changed</b> markdown page, [like this one](http://neomatrix369.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/whatsChanged.html).

The [What's changed](http://neomatrix369.gitbooks.io/adoptopenjdk-getting-started-kit/content/en/whatsChanged.html) markdown generator scripts are called [whatsChanged.sh](https://github.com/neomatrix369/adoptopenjdk-getting-started-kit/blob/master/whatsChangedFor.sh) and [whatsChangedForAllLanguages.sh](https://github.com/neomatrix369/adoptopenjdk-getting-started-kit/blob/master/whatsChangedFor.sh).

Please feel free to improve it, provided it continues to do what it currently does and more.