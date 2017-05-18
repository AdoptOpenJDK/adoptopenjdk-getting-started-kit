# Testando projeto Java Early

Para trazer o processo de teste para a comunidade e também para receber feedback antecipado, [@LJCJug](http://twitter.com/ljcjug) and OpenJDK (i.e. Oracle) iniciaram projetos para testes antecipados, para ver bibliotecas úteis por favor veja [essa wiki page](https://java.net/projects/adoptopenjdk/pages/TestingJava8) assim como **[JDK9 Outreach](https://wiki.openjdk.java.net/display/Adoption/JDK+9+Outreach)** e **[Quality Outreach](https://wiki.openjdk.java.net/display/quality/Quality+Outreach)**.

**Adopt OpenJDK encoraja e suporta os esforços listados acima, veja https://java.net/projects/adoptopenjdk/pages/TestingJava8.**

Porém isso não precisa parar por aqui, você pode selecionar sua própria biblioteca ou projeto opensource, compile usando a JDK9 e execute usando a JDK or JRE 9.

* Tenha certeza de ter configurado seu PATH a/ou JAVA_HOME para apontar para a imagem que você construiu usando OpenJDK9 (veja o diretório de build ```build/linux-x86_64-normal-server-release/images/jdk``` para Linux).
* Acesso antecipado ao JDK 9 - Baixe os binários do Java 9 em https://jdk9.java.net/download/ (Tenha certeza de ter configurado seu PATH a/ou JAVA_HOME para apontar para a JDK correta).
* Acesso antecipado ao JDK 9 Jigsaw - Baixe os binários do Java 9 em https://jdk9.java.net/jigsaw/ (Tenha certeza de ter configurado seu PATH a/ou JAVA_HOME para apontar para a JDK correta).
* Guarde todas as respostas a execução desses passos, da compilação ao build, testes e execuções no ambiente JDK9.
* Informe aos responsáveis pelas bibliotecas ou projetos usando suas listas de email ou páginas dos projetos (github or bitbucket). 
* Também copie a lista [Adoption](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss)+ em seus emails. 
* No caso de issues contate os mantenedores do projeto, [Adoption Discuss](http://mail.openjdk.java.net/mailman/listinfo/adoption-discuss)+
assim como a lista [OpenJDK](http://mail.openjdk.java.net/mailman/listinfo)+. Dependendo da fonte do problema as listas jdk9 or jigsaw.

\+ Você precisará se subscrever nessas listas antes de enviar algum email.

Nota: Essas são algumas bibliotecas e frameworks úteis que estamos listando - porém há muito mais projetos por aí esperando para serem testados.

Esse é um exemplo das notas do [JBoss Forge built using the JDK image created from OpenJDK9](https://gist.github.com/neomatrix369/9fa4147ee8999cfd3a4e), consequentemente você pode configurar um Jenkins local ou remoto e buildar/testar os projetos usando essa imagem.

Nós temos também um [Google doc para feedback](https://docs.google.com/document/d/1KlumN74IGt-TU-Md3Fn5h4sXHa75RApWNLszUTVp-DE/edit), inclua nesse arquivo suas experiências com o máximo de detalhes possíveis para ajudar com a reprodução do problema

JDK 9 Projeto Jigsaw no Github - [https://github.com/AdoptOpenJDK/jdk9-jigsaw](https://github.com/AdoptOpenJDK/jdk9-jigsaw).

Outra contribuição de Joe Kutner (@codefinger), JVM Platform Owner at Heroku, see [Testando JDK 9 EA com Heroku](http://jkutner.github.io/2015/07/16/test-jdk9-heroku.html) - que pode ser usado para deploy de sua aplicação no Heroku para  verificar G1GC logs.