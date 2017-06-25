# Preparações

* Siga as instruções em https://web.archive.org/web/20160623200504/https://java.net/projects/adoptopenjdk/pages/InstallJtreg e https://java.net/projects/adoptopenjdk/pages/EclipseProjectForJTReg [dead-link] para saber mais sobre o OpenJDK JTReg. Para mais detalhes, os passos para compilar o JTReg. Veja também [o link](http://openjdk.java.net/jtreg/build.html).

* Interessante [postagem no blog](http://arkangelofkaos.blogspot.co.uk/2013/05/openjdk-test-fest-23rd-march-2013.html) sobre o que se deve ter em mente antes de escrever testes.

* Dê uma olhada nesses Tutorial JTReg [vídeos](https://www.youtube.com/watch?v=4_MSxD8iC1E). <br/>
[Guia de Início Rápido](http://bit.ly/1fWCqPH) tutorial jtreg. <br/>

* Para ver o help on-line JTReg execute o comando `` `$ jtreg -onlineHelp```

* Se você não quiser compilar por conta própria, faça o download do último artefato JTReg do servidor [Adopt OpenJDK Cloudbees Jenkin](https://adopt-openjdk.ci.cloudbees.com/job/jtreg/lastSuccessfulBuild/ artefato/).
Depois de fazer-lo, faça uma cópia das subpastas win32, linux e lib da subpasta dist / jtreg para a pasta jtreg - para evitar erros na execução de testes. Em algumas edições, os arquivos na pasta win32 devem ser executáveis ​​(`` `chmod u + x ...` ``).