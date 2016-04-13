# Passos Avançados


* [Passos Avançados](advanced_steps.md)
   * [Compilando jcov](building_jcov.md)
   * [Compilando sigtest](building_sigtest.md)
   * [OpenJDK cobertura de código](openjdk_code_coverage.md)
   * [Deep-dive Hotspot e cia](deep-dive_hotspot_stuff.md)
   * [Compilador e cia](compiler_stuff.md)
   * [Efetue mudancas no java.c & e rode com o Hotspot dentro do Eclipse](change_javac_&_run_hotspot_from_within_eclipse.md)
   * [Efetue mudancas no java.c & e rode com o Hotspot dentro do CLI](change_javac_&_run_hotspot_from_the_cli.md)
   * [Hackeando o JDK, compilando, efetuando o build & rodando testes especificos](hacking_the_jdk,_compiling,_building_&_running_specific_tests_change_sources_in_the_jdk.md)
       * [Testando o Java antes do lançamento oficial](testing_java_early_project.md)
       * [Efetuando mudancas na classe Random.java class](change_the_randomjava_class_to_amend_the_below_method.md)
       * [Efetuando mudancas na classe StringBuffer.java](change_the_stringbufferjava_class_to_add_the_below_method.md)
       * [Como usar o JTReg… - Java Regression Test Harness](how_to_use_jtreg_-_java_regression_test_harness.md)
           * [Preparações](preparations.md)
           * [Problems.txt](problems.txt.md)
           * [Exemplos de anotações no header de arquivos de teste](test-annotations.md)

### Muito em breve.…

* Nashorn goodies…
* More on Lambdas….
* OpenJDK (JDK) code coverage tool (two)…
* OpenJDK build warnings tool (which are currently suppressed in the build process)...
* View what happens under the hood with JIT compilation on the HotSpot JVM (jitWatch)
* Smalltalk for the JVM...
* Lisp for the JVM…


### Hotspot JVM tasks: tasks adicionais para (nível intermediario / advancado) (Sem tradução)

*  Insert debug-level log messages into java.c throughout the unit, rebuild gamma and run the Demo class or any other java-based.
*  Refactor java.c and insert debug-level log messages throughout the unit, rebuild gamma and run the Demo class or any other java-based program.
*  After step 2) above, load a low-latency, GC-tuned java based program, with GC-logs enabled and examine the GC-logs produced, to see if there is any change in performance (for performance tuning buffs).
*  Apply the Elvis operator to javac (a good way to get exposure to ‘how to modify javac?’) and compile a java program with the Elvis operator implemented in it.
*  GC-fun: replace the existing garbage collector(s) with a custom one. Resurrect PermGen or iCMS in the existing code. Add your change you always wanted to, to the existing version of Hotspot (for GC buffs).
*  Change javac to be able to parse and compile new language features or understand another dialect of JVM-based languages or maybe even older programming languages like C, Assembly, Scheme or Smalltalk.
*  Replace the built-in class-loader with your custom version.