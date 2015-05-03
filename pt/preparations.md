# Preparações

* Siga as instruções no link https://java.net/projects/adoptopenjdk/pages/InstallJtreg e https://java.net/projects/adoptopenjdk/pages/EclipseProjectForJTReg para aprender mais sobre o OpenJDK JTReg. Para mais detalhes de como fazer o build do JTReg veja o [link](http://openjdk.java.net/jtreg/build.html).

* Interessante [blog](http://arkangelofkaos.blogspot.co.uk/2013/05/openjdk-test-fest-23rd-march-2013.html).

* De uma olhada no tutorial JTReg  [videos](http://bit.ly/1bT4g7f).<br/>
[Guia para iniciantes](http://bit.ly/1fWCqPH).<br/>

* Para ver a ajuda online do JTReg execute o comando```$ jtreg -onlineHelp```

* Para arquivos binarios visite o link do CI Jenkins onde builds diarios sao criados [Adopt OpenJDK Cloudbees Jenkin server]( https://adopt-openjdk.ci.cloudbees.com/job/jtreg/lastSuccessfulBuild/artifact/).
O seguinte passo sera copiar o win32, linux and lib sub diretorios dentro de dist/jtreg dentro do diretorio jtreg. Confirme que os arquivos no diretorio win32 são executaveis (```chmod u+x …```).

