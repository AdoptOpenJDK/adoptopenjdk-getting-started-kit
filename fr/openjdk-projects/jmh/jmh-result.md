##Résultat de JMH

Exécutez le benchmark

`
java -XX:-TieredCompilation -Dbenc hmark.n=10000 -jar target/microbenchmarks.jar -wi 5 -w 50ms -r 50ms -i 20 -f 1 " .*CollectionComparison.*"
`


```

  # VM invoker: D:\Java\bin\java.exe
  # VM options: -XX:-TieredCompilation -Dbenchmark.n=10000
  # Warmup: 5 iterations, 50 ms each
  # Measurement: 20 iterations, 50 ms each
  # Timeout: 10 min per iteration
  # Threads: 1 thread, will synchronize iterations
  # Benchmark mode: Average time, time/op
  # Benchmark: com.test.jmh.CollectionComparison.goldmansachscollections

  # Run progress: 0.00% complete, ETA 00:00:02
  # Fork: 1 of 1
  # Warmup Iteration   1: 0.443 us/op
  # Warmup Iteration   2: 0.290 us/op
  # Warmup Iteration   3: 0.343 us/op
  # Warmup Iteration   4: 0.350 us/op
  # Warmup Iteration   5: 0.388 us/op
  Iteration   1: 0.796 us/op
  Iteration   2: 0.542 us/op
  Iteration   3: 0.510 us/op
  Iteration   4: 0.617 us/op
  Iteration   5: 0.482 us/op
  Iteration   6: 0.387 us/op
  Iteration   7: 0.272 us/op
  Iteration   8: 0.536 us/op
  Iteration   9: 0.498 us/op
  Iteration  10: 0.402 us/op
  Iteration  11: 0.328 us/op
  Iteration  12: 0.542 us/op
  Iteration  13: 0.299 us/op
  Iteration  14: 0.647 us/op
  Iteration  15: 0.291 us/op
  Iteration  16: 0.815 us/op
  Iteration  17: 0.680 us/op
  Iteration  18: 0.363 us/op
  Iteration  19: 0.560 us/op
  Iteration  20: 0.334 us/op


  Result: 0.495 ¦(99.9%) 0.140 us/op [Average]
    Statistics: (min, avg, max) = (0.272, 0.495, 0.815), stdev = 0.162
    Confidence interval (99.9%): [0.355, 0.636]


  # VM invoker: D:\Java\bin\java.exe
  # VM options: -XX:-TieredCompilation -Dbenchmark.n=10000
  # Warmup: 5 iterations, 50 ms each
  # Measurement: 20 iterations, 50 ms each
  # Timeout: 10 min per iteration
  # Threads: 1 thread, will synchronize iterations
  # Benchmark mode: Average time, time/op
  # Benchmark: com.test.jmh.CollectionComparison.javacollections

  # Run progress: 50.00% complete, ETA 00:00:05
  # Fork: 1 of 1
  # Warmup Iteration   1: 0.475 us/op
  # Warmup Iteration   2: 0.696 us/op
  # Warmup Iteration   3: 0.816 us/op
  # Warmup Iteration   4: 0.622 us/op
  # Warmup Iteration   5: 0.574 us/op
  Iteration   1: 0.987 us/op
  Iteration   2: 0.585 us/op
  Iteration   3: 0.770 us/op
  Iteration   4: 0.711 us/op
  Iteration   5: 0.546 us/op
  Iteration   6: 0.553 us/op
  Iteration   7: 1.164 us/op
  Iteration   8: 1.096 us/op
  Iteration   9: 1.477 us/op
  Iteration  10: 0.824 us/op
  Iteration  11: 1.002 us/op
  Iteration  12: 0.504 us/op
  Iteration  13: 1.019 us/op
  Iteration  14: 0.834 us/op
  Iteration  15: 0.589 us/op
  Iteration  16: 0.557 us/op
  Iteration  17: 1.338 us/op
  Iteration  18: 0.906 us/op
  Iteration  19: 0.486 us/op
  Iteration  20: 0.587 us/op


  Result: 0.827 ¦(99.9%) 0.252 us/op [Average]
    Statistics: (min, avg, max) = (0.486, 0.827, 1.477), stdev = 0.291
    Confidence interval (99.9%): [0.574, 1.079]


  # Run complete. Total time: 00:00:10
```

<table>
    <thead>
    <tr>
         <td>Benchmark</td>
         <td>Mode</td>
         <td>Echantillon</td>
         <td>Score</td>
         <td>Score erreur</td>
         <td>Unités</td>
    </tr>
    </thead>
    <tr>
        <td>c.t.j.CollectionComparison.goldmansachscollections</td>
        <td>avgt</td>
        <td>20</td>
        <td>0.495</td>
        <td>0.140</td>
        <td>us/op</td>
    </tr>
    <tr>
        <td>c.t.j.CollectionComparison.javacollections</td>
        <td>avgt</td>
        <td>20</td>
        <td>0.827</td>
        <td>0.252</td>
        <td>us/op</td>
    </tr>
</table>

