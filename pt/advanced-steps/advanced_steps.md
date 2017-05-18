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
* More on Lambdas….
* OpenJDK (JDK) code coverage tool (two)…
* OpenJDK build warnings tool (which are currently suppressed in the build process)...
* View what happens under the hood with JIT compilation on the HotSpot JVM (jitWatch)
* Smalltalk for the JVM...
* Lisp for the JVM…


### Hotspot JVM tasks: tasks adicionais para (nível intermediario/advancado) (Sem tradução)

*  Insert debug-level log messages into java.c throughout the unit, rebuild gamma and run the Demo class or any other java-based.
*  Refactor java.c and insert debug-level log messages throughout the unit, rebuild gamma and run the Demo class or any other java-based program.
*  After step 2) above, load a low-latency, GC-tuned java based program, with GC-logs enabled and examine the GC-logs produced, to see if there is any change in performance (for performance tuning buffs).
*  Apply the Elvis operator to javac (a good way to get exposure to ‘how to modify javac?’) and compile a java program with the Elvis operator implemented in it.
*  GC-fun: replace the existing garbage collector(s) with a custom one. Resurrect PermGen or iCMS in the existing code. Add your change you always wanted to, to the existing version of Hotspot (for GC buffs).
*  Change javac to be able to parse and compile new language features or understand another dialect of JVM-based languages or maybe even older programming languages like C, Assembly, Scheme or Smalltalk.
*  Replace the built-in class-loader with your custom version.