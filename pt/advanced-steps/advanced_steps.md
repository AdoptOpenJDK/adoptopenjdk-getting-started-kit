# Passos Avançados


* [Passos avançados](advanced_steps.md)
    * [Argumentos de linha de comando para otimização de desempenho de compilação](command-line_arguments_for_build_performance_optimisation.md)
    * [Compilando jcov](building_jcov.md)
    * [Compilando sigtest](building_sigtest.md)
    * [Cobertura de código OpenJDK](openjdk_code_coverage.md)
    * [Aprofundando-se na Hotspot](deep-dive_hotspot_stuff.md)
    * [Compilação](compilador_stuff.md)
    * [Alterar java.c & executar o Hotspot a partir do Eclipse](change_javac _ & _ run_hotspot_from_within_eclipse.md)
    * [Alterar java.c & executar o Hotspot à partir do CLI](change_javac _ & _ run_hotspot_from_the_cli.md)
   
### Muito em breve.…

* Nashorn goodies…
* Mais em Lambdas….
* OpenJDK (JDK) ferramenta de cobertura ...
* Ferramenta de aviso de compilação do OpenJDK (que atualmente está suprimida no processo de compilação) ...
* Veja o que acontece sob o capô com a compilação JIT no HotSpot JVM (jitWatch)
* Smalltalk para a JVM ...
* Lisp para a JVM ...


### Hotspot JVM tasks: tarefas adicionais para (intermediário / advancado) (Sem tradução)

* Inserir mensagens de log de nível de depuração em java.c em toda a unidade, reconstruir e executar a classe Demo ou qualquer outra baseado em java.
* Refatorar java.c e inserir mensagens de log de nível de depuração em toda a unidade, reconstruir e executar a classe Demo ou qualquer outro programa baseado em java.
* Após o passo 2) acima, carregue um programa baseado em Java de baixa latência GC-afinado, com GC-logs habilitados e examine os logs GC produzidos, para ver se há alguma mudança no desempenho (para aprimoramento do desempenho buffs).
* Aplicar o operador de Elvis para javac (uma boa maneira de obter exposição a 'como modificar javac?') E compilar um programa java com o operador Elvis implementado nele.
* GC-fun: substituir o coletor de lixo existente (s) com um personalizado. Resurrect PermGen ou iCMS no código existente. Adicione a alteração que sempre quis, à versão existente do Hotspot (GC).
* Mude o javac para poder analisar e compilar novos recursos de linguagem ou entender outro dialeto de linguagens baseadas em JVM ou talvez até linguagens de programação mais antigas como C, Assembly, Scheme ou Smalltalk.
* Substitua o built-in class-loader com a sua versão personalizada.