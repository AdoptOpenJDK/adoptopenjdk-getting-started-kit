# Patches - como criar e submete-los (webrev)

* Confirme que o webrev.ksh esta disponível, caso contrário efetue o [download](http://hg.openjdk.java.net/code-tools/webrev/raw-file/tip/webrev.ksh).
* Realize as mudancas necessárias no OpenJDK
* Verifique se existem novos updates no repo usando o comando abaixo

```
$ hg status
```

Este comando quando executado, caso hajam mudanças, pode retornar algo como:

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

* Em seguida execute webrev em sua linha de comando seguindo os passos mencionaods na [Wiki](http://openjdk.java.net/guide/webrevHelp.html), mais detalhes podem ser encontrados em http://openjdk.java.net/guide/codeReview.html e http://illumos.org/man/webrev.

Os passos acima, devem criar um diretorio .webrev que deve conter artefatos e material para a code-review. Estes devem ser enviados a algum serviço de storage e um link para o mesmos deve ser enviado para as listas de email apropriadas.

Alguns scripts que podem ser de grande ajuda com o mercurial (hg) e para criar webrevs:

* Scripts úteis https://bitbucket.org/adoptopenjdk/adopt/src/626e5ccdc28743e93aba9e4daf81255764c090bc/scripts/?at=default

* Exemplo de programas Java
https://bitbucket.org/adoptopenjdk/betterrev/src/9a7abf94ed8f8ec1f2fa67986269e0516fa9f282/betterrev/app/update/mercurial/?at=master

Uma vez que o webrev esteja pronto, entre em contato com a lista de emails mais apropriada e envie a lista e o link com as mudancas que foram feitas (veja repo, modulo, arquivo ou diretorio que contenham as mudancas). Na lista de email, procure um sponsor (Se ainda não for um committer), recomendamos que envie cópias para mais de uma lista de email.

Assine o documento do OCA, caso contrário enviar o webrev não vai ajudar muito. (veja [Signing OCA](about_oca_-_signing_the_oca.md)).

Existe um projeto em desenvolvimento no github que pode ajuda [github like](https://bitbucket.org/adoptopenjdk/betterrev).