# ProblemList.txt

Jtreg agora fornece suporte direto para o arquivo ProblemList.txt usado para identificar testes problemáticos no conjunto de teste de regressão ```jdk/test/```.  Anteriormente, ele era processado por ```test/Makefile``` em uma lista de exclusão; Agora, o arquivo pode ser executado diretamente com a opção ```-exclude```.

É também um arquivo para analisar ao procurar coisas para fazer nas áreas de 'teste' e 'jtreg', tente o abaixo para ver o que você obtém em sua versão do OpenJDK:

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

Dê uma olhada no conteúdo deste arquivo para ver como os testes que precisam ser excluídos são definidos. A partir de agora, este arquivo só está disponível na pasta ```jdk/test```.