# Patches - comment les créer et les soumettre (webrev)

Avant de créer un patch, lisez [ceci](http://openjdk.java.net/contribute/), ainsi que ces quelques [autres resources](http://events.linuxfoundation.org/sites/events/files/slides/Bird-Successful-Engagement-with-Open-Source-Communities.pdf) qui peuvent également aider.

* Assurez vous que webrev.ksh est disponible ou [téléchargez le](http://hg.openjdk.java.net/code-tools/webrev/raw-file/tip/webrev.ksh).
* Effectuez les changements requis d'OpenJDK
* Véfifiez ces changements en utilisant la commande suivante

```
$ hg status
```

Vous verrez les fichiers ajoutés, supprimés ou changés dans le process, une sortie exemple peut être :

```
A COPYING
A README
A examples/simple.py
? MANIFEST.in
? examples/performant.py
? setup.py
M src/main.py
? src/watcher/_watcher.c
D src/watcher/watcher.py
? src/xyzzy.txt
```
* Ensuite lancez webrev en ligne de commande comme décrit dans le [Wiki](http://openjdk.java.net/guide/webrevHelp.html), quelques liens peuvent être trouvés à http://openjdk.java.net/guide/codeReview.html et http://illumos.org/man/webrev.

Cela créera un répertoire .webrev qui contient les artéfacts et matériels de revue de code que vous devrez héberger quelque part et dont vous posterez le lien sur la mailing lists appropriée.

Un peu d'aide pour utiliser les scripts avec mercurial (hg) et créer des webrevs :

* Scripts utiles https://bitbucket.org/adoptopenjdk/adopt/src/626e5ccdc28743e93aba9e4daf81255764c090bc/scripts/?at=default

* Exemple de programme Java
https://bitbucket.org/adoptopenjdk/betterrev/src/9a7abf94ed8f8ec1f2fa67986269e0516fa9f282/betterrev/app/update/mercurial/?at=master

Une fois que vous avez un webrev, contactez la mailing list appropriée et liez les changements que vous avez fait (voir la repo, le module, répertoire ou package dans lesquels vous avez fait ces changements). Sur la mailing list demandez un sponsor (si vous n'êtes pas encore un committer), on vous demandera parfois de cc plusieurs autres mailing lists.

A ce stade vous devrez au moins signer l'OCA ou sinon le webrev ne pourra être utilisé (voir [Signer l'OCA](../adopt-openjdk-getting-started/about_oca_-_signing_the_oca.md)).

Il y a un projet en cours qui aidera à replacer ce process par un [process plus semblable à github](https://bitbucket.org/adoptopenjdk/betterrev).
