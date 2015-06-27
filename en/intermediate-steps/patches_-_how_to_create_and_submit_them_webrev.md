# Patches - how to create and submit them (webrev)

Before creating any patch, please have a [read of this](http://openjdk.java.net/contribute/), some [other resource](http://events.linuxfoundation.org/sites/events/files/slides/Bird-Successful-Engagement-with-Open-Source-Communities.pdf) that might help as well.

* Ensure webrev.ksh is available or [download it from](http://hg.openjdk.java.net/code-tools/webrev/raw-file/tip/webrev.ksh).
* Make the necessary OpenJDK changes
* Check for these changes using the below command

```
$ hg status
```

And you will see the files added, deleted or changed in the process, a sample output can be:

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
* And then run webrev as a command-line action as mentioned on the [Wiki](http://openjdk.java.net/guide/webrevHelp.html), some more links can be found at  http://openjdk.java.net/guide/codeReview.html and http://illumos.org/man/webrev.

It will create a folder .webrev which contains the artifacts and code-review material you will need to host somewhere and then post the link to that to the respective mailing lists.

Some help by using scripts to work with mercurial (hg) and creating webrevs:

* Handy scripts https://bitbucket.org/adoptopenjdk/adopt/src/626e5ccdc28743e93aba9e4daf81255764c090bc/scripts/?at=default

* Sample Java programs
https://bitbucket.org/adoptopenjdk/betterrev/src/9a7abf94ed8f8ec1f2fa67986269e0516fa9f282/betterrev/app/update/mercurial/?at=master

Once you have a webrev ready, contact the relevant mailing list linked to the changes you made (see repo, module, folder or package in which you have made these changes in). On the mailing list request for a sponsor (if you are not a committer yet), you also be asked to cc more than one mailing lists in.

At this point you must at least signed the OCA or else sending the webrev for code review won’t yield anything (see [Signing OCA](../adopt-openjdk-getting-started/about_oca_-_signing_the_oca.md)).

There is a project in the making that will help replace this process with a more [github like process](https://bitbucket.org/adoptopenjdk/betterrev).