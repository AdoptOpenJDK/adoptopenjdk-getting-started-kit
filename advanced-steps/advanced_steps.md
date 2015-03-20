# Advanced steps

* [Advanced steps](advanced_steps.md)
   * [Building jcov](building_jcov.md)
   * [Building sigtest](building_sigtest.md)
   * [OpenJDK Code coverage](openjdk_code_coverage.md)
   * [Deep-dive Hotspot stuff](deep-dive_hotspot_stuff.md)
   * [Compiler stuff](compiler_stuff.md)
   * [Change java.c & run Hotspot from within Eclipse](change_javac_&_run_hotspot_from_within_eclipse.md)
   * [Change java.c & run Hotspot from the CLI](change_javac_&_run_hotspot_from_the_cli.md)
   * [Hacking the JDK, compiling, building & running specific tests (change sources in the JDK)](hacking_the_jdk,_compiling,_building_&_running_specific_tests_change_sources_in_the_jdk.md)
       * [Testing Java Early project](testing_java_early_project.md)
       * [Change the Random.java class to amend the below method](change_the_randomjava_class_to_amend_the_below_method.md)
       * [Change the StringBuffer.java class to add the below method](change_the_stringbufferjava_class_to_add_the_below_method.md)
       * [How to use JTReg… - Java Regression Test Harness ?](how_to_use_jtreg_-_java_regression_test_harness.md)
           * [Problems.txt](problems.txt.md)
           * [Examples of annotations in the header of test files](advanced-steps/test-annotations.md)

### Coming soon…

* Nashorn goodies…
* More on Lambdas….
* OpenJDK (JDK) code coverage tool (two)…
* OpenJDK build warnings tool (which are currently suppressed in the build process)...
* View what happens under the hood with JIT compilation on the HotSpot JVM (jitWatch)
* Smalltalk for the JVM...
* Lisp for the JVM…


### Hotspot JVM tasks: Additional tasks for (intermediate to advance level)

*  Insert debug-level log messages into java.c throughout the unit, rebuild gamma and run the Demo class or any other java-based.
*  Refactor java.c and insert debug-level log messages throughout the unit, rebuild gamma and run the Demo class or any other java-based program.
*  After step 2) above, load a low-latency, GC-tuned java based program, with GC-logs enabled and examine the GC-logs produced, to see if there is any change in performance (for performance tuning buffs).
*  Apply the Elvis operator to javac (a good way to get exposure to ‘how to modify javac?’) and compile a java program with the Elvis operator implemented in it.
*  GC-fun: replace the existing garbage collector(s) with a custom one. Resurrect PermGen or iCMS in the existing code. Add your change you always wanted to, to the existing version of Hotspot (for GC buffs).
*  Change javac to be able to parse and compile new language features or understand another dialect of JVM-based languages or maybe even older programming languages like C, Assembly, Scheme or Smalltalk.
*  Replace the built-in class-loader with your custom version.