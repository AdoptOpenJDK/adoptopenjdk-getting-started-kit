# Testando o Java antes do lançamento oficial

Para trazer o teste antes do lancamento oficial para a comunidade e receber early feedback, o Testing Java projects teve inicio e é patrocinado por [@LJCJug](http://twitter/ljcjug) e OpenJDK (i.e. Oracle), econtre muitas libs Java que estão listadas, veja mais detalhes [nesta wiki page](https://java.net/projects/adoptopenjdk/pages/TestingJava8) e também de uma olhada em [JDK9 Outreach](https://wiki.openjdk.java.net/display/Adoption/JDK+9+Outreach).

Mas não paramos por aqui, você pode selecionar a sua propria lib java ou projeto opensource, efetue o build usando JDK9 e em seguida rode-o com o JDK9 or JRE9.

* Confirme que o seu PATH e/ou JAVA_HOME estão configurados apontando para o OpenJDK9 que você fez o build. (veja build folder ```build/linux-x86_64-normal-server-release/images/jdk``` para o build em Linux).
* Grave todas as respostas a cada um destes passos desde a compilação, build, test e testes usando o JDK9 environment
* Informe aos respectivos projetos sobre os problemas encontrados com as libs e versoes que se apliquem usando mailing list ou na project page (github/bitbucket).
* Copie também o [Adoption Discuss mailing list](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss) nos emails enviados.
* Caso encontre problemas na comunicação com os projetos, reporte no [Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss) e também nas relevantes [OpenJDK](http://mail.openjdk.java.net/mailman/listinfo) mailing list.

No link [JBoss Forge](https://gist.github.com/neomatrix369/9fa4147ee8999cfd3a4e) existe um build realizado usando imagens JDK criadas a partir do projeto OpenJDK9.
Você pode usar esta imagem como base para realizar o seu proprio build com o OpenJDK9.