# Instructions avancées

* [Instructions avancées](advanced_steps.md)
   * [Arguments de ligne de commande pour l'optimisation des performances de build](command-line_arguments_for_build_performance_optimisation.md)
   * [Construire jcov](building_jcov.md)
   * [Construire sigtest](building_sigtest.md)
   * [Couverture de code d'OpenJDK](openjdk_code_coverage.md)
   * [Immersion dans Hotspot](deep-dive_hotspot_stuff.md)
   * [Compilateur](compiler_stuff.md)
   * [Changement de java.c et lancement d'Hotspot depuis Eclipse](change_javac_&_run_hotspot_from_within_eclipse.md)
   * [Changement de java.c et lancement d'Hotspot depuis la ligne de commande](change_javac_&_run_hotspot_from_the_cli.md)

### A venir…

* bonus Nashorn...
* Plus sur les Lambdas...
* outil de couverture de code d'OpenJDK (JDK) (2)...
* outil pour les warnings de build d'OpenJDK (qui sont en cours de supression dans le process de build)...
* Vue de ce qui se passe sous la capot de la compilation JIT sur la JVM HotSpot (jitWatch)
* Smalltalk pour la JVM...
* Lisp pour la JVM…


### Tâches JVM Hotspot : Tâches complémentaires pour (niveau intermédiaire à avancé)

*  Insérez des messages de niveau debug dans java.c dans l'ensemble de l'unité, rebuildez gamma et lancez la classe Demo ou autre classes Java.
*  Refactorez java.c et insérez des messages de niveau debug ans l'ensemble de l'unité, rebuildez gamma et lancez la classe Demo ou autre classes Java.
*  Après l'étape 2) ci-dessus, chargez un programme Java ayant une latence basse et un GC tuné, ainsi que les logs GC activés, puis examinés les logs produit, pour voir s'il y a le moindre changement de performance (pour les mordus de performances).
*  Appliquez l'opérateur Elsvis à javac (un bon moyen de se frotter à 'comment modifier javac ?') et compilez un programme Java ayant un opérateur Elvis.
*  GC-fun: remplacez le(s) garbage collector(s) existant(s) avec un nouveau. Ravivez PermGen ou iCMS dans du code existant. Ajoutez un changement dont vous avez toujours voulu, à la version actuelle d'Hotspot (pour les timbrés de GC).
*  Changez javac pour pouvoir parser et compiler de nouvelles fonctionalites de langage ou pour lui faire comprendre un autre dialecte d'un langage basé sur la JVM ou même un vieux langage tel C, Assembleur, Scheme ou Smalltalk.
*  Replacez le class-loader fourni par votre propre version.