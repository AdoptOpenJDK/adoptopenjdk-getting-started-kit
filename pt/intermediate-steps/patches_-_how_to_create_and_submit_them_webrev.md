# Patches - como criar e submete-los (webrev)

* Confirme que o webrev.ksh esta disponivel, caso contrario efetue o [download](http://hg.openjdk.java.net/code-tools/webrev/raw-file/tip/webrev.ksh).
* Realize as mudancas necessárias no OpenJDK
* Verifique se existem novos updates no repo usando o comando abaixo

```
$ hg status
```

Este comando quando executado, caso hajam mudancas, pode retornar algo como:

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

* Em seguida execute webrev em sua linha de comando seguindo os passos mencionaods na [Wiki](http://openjdk.java.net/guide/webrevHelp.html), mais detalhes podem ser encontrados em http://openjdk.java.net/guide/codeReview.html and http://illumos.org/man/webrev.

Os passos acima, devem criar um diretorio .webrev que deve conter artifacts e material para a code-review. Estes devem ser enviados a algum servico de storage e um link para o mesmos deve ser enviado para as listas de email apropriadas.

Alguns scripts que podem ser de grande ajuda com o mercurial (hg) e para criar webrevs:

* Canivete suiço scripts https://bitbucket.org/adoptopenjdk/adopt/src/626e5ccdc28743e93aba9e4daf81255764c090bc/scripts/?at=default

* Exemplo de programas Java
https://bitbucket.org/adoptopenjdk/betterrev/src/9a7abf94ed8f8ec1f2fa67986269e0516fa9f282/betterrev/app/update/mercurial/?at=master

Uma vez que o webrev esteja pronto, entre em contato com a lista de emails mais apropriada e envie a lista e o link com as mudancas que foram feitas (veja repo, module, arquivo ou diretorio que contenham as mudancas). Na lista de email, procure um sponsor (Se ainda nao for um committer), recomendamos que envie copias para mais de uma lista de email.

Assine o documento do OCA, caso contrario enviar o webrev nao vai ajudar muito. (veja [Signing OCA](about_oca_-_signing_the_oca.md)).

Existe um projeto em desenvolvimento no github que pode ajudar a torna-lo mais [github like](https://bitbucket.org/adoptopenjdk/betterrev).