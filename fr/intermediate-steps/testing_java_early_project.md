# Tester le projet Java Early

Pour amener la process de tests vers la communaut� et �galement pour tester t�t pour un retour t�t, les projet Testing Java ont �t� cr��er et support�s par le [@LJCJug](http://twitter.com/ljcjug) et OpenJDK (i.e. Oracle), pour voir la poign�e de librairies Java participante, lisez la [page wiki](https://java.net/projects/adoptopenjdk/pages/TestingJava8) ainsi que les programmes <b>[JDK9 Outreach](https://wiki.openjdk.java.net/display/Adoption/JDK+9+Outreach)</b> et <b>[Quality Outreach](https://wiki.openjdk.java.net/display/quality/Quality+Outreach)</b>.

<b>Adopt OpenJDK a son propre effort pour encourager et supporter les efforts ci-dessus, voyez https://java.net/projects/adoptopenjdk/pages/TestingJava8.</b>

Mais cela ne s'arr�te pas l�, vous pouvez selectionnez votre propre biblioth�que Java ou projet opensource, le construire avec le JDK 9 puis le lancer avec ce m�me JDK ou le JRE.

* Assurez vous que votre PATH et/ou JAVA_HOME pointe vers l'image d'OpenJDK9 que vous avez construite (voir le r�pertoire ```build/linux-x86_64-normal-server-release/images/jdk``` pour une build Linux).
* Ou t�l�chargez les binaires Early Access de Java 9 depuis https://jdk9.java.net/download/ (assurez vous que votre PATH et/ou JAVA_HOME pointe vers l'emplacement du JDK t�l�charg�).
* Notez les r�ponses � chacune des �tapes depuis la compilation, construction, les ex�cutions de tests pour lancer l'application dans un environement JDK 9
* Informez les propri�taire de ces biblioth�que ou projets en utilisant leur mailing list ou sur leur page de projet (github ou bitbucket). 
* Copiez �galement la [mailing list Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss)+ de ces mails. 
* En cas de probl�me contractez les propri�taires du projet, [Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss)+ ainsi que les mailing lists [OpenJDK](http://mail.openjdk.java.net/mailman/listinfo) appropri�es.

\+ Vous devez vous abonner aux mailing lists respective avant d'y envoyer des mails.

Note : ce ne sont qu'une petite partie des biblioth�que et frameworks que nous avons inscrit - il y a beaucoup d'autre projets dans la nature en attente d'�tre tester.

Voici un exemple de note de [JBoss Forge construite en utilisant l'image OpenJDK cr��e depuis OpenJDK9](https://gist.github.com/neomatrix369/9fa4147ee8999cfd3a4e), ensuite vous pouvez d�finir un job local ou distant de Jenkins pour construire et lancer ces projets en utilisant cette image.

Une autre contribution de Joe Kutner (@codefinger), JVM Platform Owner chez Heroku, lisez [Testing JDK 9 EA with Heroku](http://jkutner.github.io/2015/07/16/test-jdk9-heroku.html) - peut �tre utiliser pour d�ployer vos applications sur Heroku pour agr�ger des logs du GC G1.