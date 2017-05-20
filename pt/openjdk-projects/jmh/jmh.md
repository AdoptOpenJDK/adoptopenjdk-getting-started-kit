
[JMH](http://openjdk.java.net/projects/code-tools/jmh/) é uma ferramenta para microbenchmarking em Java e outras linguagens da JVM.

Um microbenchmark é uma maneira de quantificar a performance de uma "micro" porção de codigo. Estes testes rodam tipicamente em nanosegundos com milhares de execuções.  O código testado geralmente executa uma pequena tarefa.

Microbenchmarking não é o mesmo que profiling!

Profiling é quando uma aplicacao inteira em produção ou outro ambiente similar a produção tem sua performance medida.

Enquanto que o Microbenchmark, resulta em uma ciência ficcional muito diferente de um ambiente de produção.

##Blog Posts

* [http://nitschinger.at/Using-JMH-for-Java-Microbenchmarking](http://nitschinger.at/Using-JMH-for-Java-Microbenchmarking)
* [http://daniel.mitterdorfer.name/articles/2014/benchmarking-hello-jmh/](http://daniel.mitterdorfer.name/articles/2014/benchmarking-hello-jmh/)
* [http://daniel.mitterdorfer.name/articles/2014/benchmarking-hello-jmh/](http://daniel.mitterdorfer.name/articles/2014/benchmarking-hello-jmh/)
* [http://shipilev.net/blog/2014/exceptional-performance/](http://shipilev.net/blog/2014/exceptional-performance/)


## Issues conhecidas

* [Dependências Maven](maven-dependencies.md)
* [Código a ser testado](system-under-test.md)
* [JMH Benchmark](jmh-benchmark.md)
* [JMH Resultados](jmh-result.md)
* [Análise usando R](analysisusingR.md)