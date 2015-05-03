# Problems.txt

jtreg agora prove suporte direto para o arquivo ProblemList.txt file usado para identificar testes problematicos no diretorio ```jdk/test/``` regression test suite. Anteriormente, este era processado pelo ```test/Makefile``` que inseria arquivos a ser excluidos dentro de uma lista, ; agora este processo pode ser executado usando a flag ```-exclude``` option.


Este arquivo pode ser usado também para encontrar coisas para fazer nas areas de ‘testing’ e ‘jtreg’, execute o comando abaixo e verifique os resultados:

```
$ cd $HOME/sources/jdk8_tl
$ tree -f | grep ProblemList.txt
│   │   ├── ./jdk/test/ProblemList.txt   ⇐ what we get
```

ou

```
$ find . -name "ProblemList.txt"
./jdk/test/ProblemList.txt               ⇐ what we get
```
De uma olhada no conteudo deste arquivo para ver como testes que precisam ser excluidos são definidos. Já que agora este arquivo só pode ser encontrado no diretorio ```jdk/test```.

