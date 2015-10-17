# Tester le projet Java Early

Pour amener la process de tests vers la communauté et également pour tester tôt pour un retour tôt, les projet Testing Java ont été crééer et supportés par le [@LJCJug](http://twitter.com/ljcjug) et OpenJDK (i.e. Oracle), pour voir la poignée de librairies Java participante, lisez la [page wiki](https://java.net/projects/adoptopenjdk/pages/TestingJava8) ainsi que les programmes **[JDK9 Outreach](https://wiki.openjdk.java.net/display/Adoption/JDK+9+Outreach)** et **[Quality Outreach](https://wiki.openjdk.java.net/display/quality/Quality+Outreach)**.

**Adopt OpenJDK a son propre effort pour encourager et supporter les efforts ci-dessus, voyez https://java.net/projects/adoptopenjdk/pages/TestingJava8.**

Mais cela ne s'arrête pas là, vous pouvez selectionnez votre propre bibliothèque Java ou projet opensource, le construire avec le JDK 9 puis le lancer avec ce même JDK ou le JRE.

* Assurez vous que votre PATH et/ou JAVA_HOME pointe vers l'image d'OpenJDK9 que vous avez construite (voir le répertoire ```build/linux-x86_64-normal-server-release/images/jdk``` pour une build Linux).
* Ou téléchargez les binaires Early Access de Java 9 depuis https://jdk9.java.net/download/ (assurez vous que votre PATH et/ou JAVA_HOME pointe vers l'emplacement du JDK téléchargé).
* Notez les réponses à chacune des étapes depuis la compilation, construction, les exécutions de tests pour lancer l'application dans un environement JDK 9
* Informez les propriétaire de ces bibliothèque ou projets en utilisant leur mailing list ou sur leur page de projet (github ou bitbucket). 
* Copiez également la [mailing list Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss)+ de ces mails. 
* En cas de problème contractez les propriétaires du projet, [Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss)+ ainsi que les mailing lists [OpenJDK](http://mail.openjdk.java.net/mailman/listinfo) appropriées.

\+ Vous devez vous abonner aux mailing lists respectives avant d'y envoyer des mails.

Note : ce ne sont qu'une petite partie des bibliothèque et frameworks que nous avons inscrit - il y a beaucoup d'autre projets dans la nature en attente d'être testés.

Voici un exemple de note de [JBoss Forge construite en utilisant l'image OpenJDK créée depuis OpenJDK9](https://gist.github.com/neomatrix369/9fa4147ee8999cfd3a4e), ensuite vous pouvez définir un job local ou distant de Jenkins pour construire et lancer ces projets en utilisant cette image.

Pour une autre contribution de Joe Kutner (@codefinger), JVM Platform Owner chez Heroku, lisez [Testing JDK 9 EA with Heroku](http://jkutner.github.io/2015/07/16/test-jdk9-heroku.html) - peut être utilisé pour déployer vos applications sur Heroku pour agréger des logs du GC G1.