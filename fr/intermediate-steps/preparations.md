# Préparations

* Suivez les instructions sur https://java.net/projects/adoptopenjdk/pages/InstallJtreg et https://java.net/projects/adoptopenjdk/pages/EclipseProjectForJTReg pour en apprendre plus sur OpenJDK JTReg. Pour des instructions plus détaillées pour construire JTReg allez sur [ce lien](http://openjdk.java.net/jtreg/build.html).

* [Blog](http://arkangelofkaos.blogspot.co.uk/2013/05/openjdk-test-fest-23rd-march-2013.html) intéressant sur ce qu'il faut avoir à l'esprit lors de l'écriture de tests.

* Visionnez ces [videos](http://bit.ly/1bT4g7f) de tutoriels pour JTReg.<br/>
Tutoriel [Guide de démarrage rapide](http://bit.ly/1fWCqPH) sur JTReg.<br/>

* Pour voir l'aide en ligne, utilisez la commande ```$ jtreg -onlineHelp```

* Si vous ne souhaitez pas construire votre propre artéfact, téléchargez le dernier artéfact JTReg depuis le serveur[Jenkins Cloudbees d'Adopt OpenJDK]( https://adopt-openjdk.ci.cloudbees.com/job/jtreg/lastSuccessfulBuild/artifact/).
Puis copiez les sous-répertoire win32, linux et lib depuis dist/jtreg sub-folder dans le répertoire jtreg - pour éviter des erreurs durant l'exécution des tests. Dans certaines cas, les fichiers du répertoire win32 doivent être rendu exécutable (```chmod u+x …```).

