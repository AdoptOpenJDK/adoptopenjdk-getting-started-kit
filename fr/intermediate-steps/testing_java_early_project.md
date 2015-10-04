# Tester le projet Java Early

Pour amener la process de tests vers la communauté et également pour tester tôt pour un retour tôt, les projet Testing Java ont été crééer et supportés par le [@LJCJug](http://twitter.com/ljcjug) et OpenJDK (i.e. Oracle), pour voir la poignée de librairies Java participante, lisez la [page wiki](https://java.net/projects/adoptopenjdk/pages/TestingJava8) ainsi que la page [JDK9 Outreach](https://wiki.openjdk.java.net/display/Adoption/JDK+9+Outreach).

Mais cela ne s'arrête pas là, vous pouvez selectionnez votre propre bibliothèque Java ou projet opensource, le construire avec le JDK 9 puis le lancer avec ce même JDK ou le JRE.

* Assurez vous que votre PATH et/ou JAVA_HOME pointe vers l'image d'OpenJDK9 que vous avez construite (voir le répertoire ```build/linux-x86_64-normal-server-release/images/jdk``` pour une build Linux).
* Notez les réponses à chacune des étapes depuis la compilation, construction, les exécutions de tests pour lancer l'application dans un environement JDK 9
* Informez les propriétaire de ces bibliothèque ou projets en utilisant leur mailing list ou sur leur page de projet (github ou bitbucket). 
* Copiez également la [mailing list Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss) de ces mails. 
* En cas de problème contractez les propriétaires du projet, [Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss) ainsi que les mailing lists [OpenJDK](http://mail.openjdk.java.net/mailman/listinfo) appropriées.

Voici un exemple de note de [JBoss Forge construite en utilisant l'image OpenJDK créée depuis OpenJDK9](https://gist.github.com/neomatrix369/9fa4147ee8999cfd3a4e), ensuite vous pouvez définir un job local ou distant de Jenkins pour construire et lancer ces projets en utilisant cette image.