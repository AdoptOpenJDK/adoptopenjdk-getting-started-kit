# Deep-dive Hotspot stuff

GC flags in the source files in the hotspot folder
* [../hotspot/src/share/vm/gc_implementation/g1/g1_globals.hpp](http://hg.openjdk.java.net/jdk8/jdk8/hotspot/file/4967eb4f67a9/src/share/vm/gc_implementation/g1/g1_globals.hpp) in the Hotspot repo

* [../hotspot/src/share/vm/runtime/globals.hpp](http://cr.openjdk.java.net/~gbenson/zero-10/hotspot/src/share/vm/runtime/globals.hpp.html) in the Hotpost repo

* [HotSpot CLI option - PrintAssembly](https://wiki.openjdk.java.net/display/HotSpot/PrintAssembly)

Neat piece of HotSpot code block - see how branching occurs depending on the type of GC you have selected

| TYPE OF GC|Young Generation|Old Generation |
|------------|----------------|--------------|
| SerialGC  (-XX:+UseSerialGC)|Serial|Serial |   
| ParallGC  (-XX:+UseParallelGC)|Parallel|Serial|
| Parallel Compacting(-XX:+UseParallelOldGC)|Parallel|Parallel  |
| Concurrent Mark Sweep GC (-XX:+UseConcMarkSweepGC)|Parallel|CMS |

(http://www.weblogic-training.com/performance-tuning/difference-between-serial-gc-parallgc-cms-(-concurrent-mark-sweep)-gc/)

Code snippet from  [./hotspot/src/share/vm/memory/universe.cpp](http://hg.openjdk.java.net/jdk6/jdk6/hotspot/raw-file/a541ca8fa0e3/src/share/vm/memory/universe.cpp)

```java
.
.
.
Universe::initialize_heap()
if (UseParallelGC) {
    #ifndef SERIALGC
    Universe::_collectedHeap = new ParallelScavengeHeap();
    #else // SERIALGC
        fatal("UseParallelGC not supported in this VM.");
    #endif // SERIALGC
} else if (UseG1GC) {
    #ifndef SERIALGC
    G1CollectorPolicy* g1p = new G1CollectorPolicy();
    G1CollectedHeap* g1h = new G1CollectedHeap(g1p);
    Universe::_collectedHeap = g1h;
    #else // SERIALGC
        fatal("UseG1GC not supported in java kernel vm.");
    #endif // SERIALGC
} else {
    GenCollectorPolicy* gc_policy;
    if (UseSerialGC) {
        gc_policy = new MarkSweepPolicy();
    } else if (UseConcMarkSweepGC) {
        #ifndef SERIALGC
        if (UseAdaptiveSizePolicy) {
            gc_policy = new ASConcurrentMarkSweepPolicy();
        } else {
            gc_policy = new ConcurrentMarkSweepPolicy();
        }
        #else // SERIALGC
            fatal("UseConcMarkSweepGC not supported in this VM.");
        #endif // SERIALGC
    } else { // default old generation
        gc_policy = new MarkSweepPolicy();
    }
    Universe::_collectedHeap = new GenCollectedHeap(gc_policy);
}
```

<br/>
#####SERIALGC switched ON - platforms that only support SERIAL GC?
```java
.
.
.
Universe::initialize_heap()
if (UseParallelGC) {
        fatal("UseParallelGC not supported in this VM.");
} else if (UseG1GC) {
        fatal("UseG1GC not supported in java kernel vm.");
} else {
    GenCollectorPolicy* gc_policy;
    if (UseSerialGC) {
        gc_policy = new MarkSweepPolicy();
    } else if (UseConcMarkSweepGC) {
            fatal("UseConcMarkSweepGC not supported in this VM.");
    } else { // default old generation
        gc_policy = new MarkSweepPolicy();
    }
    Universe::_collectedHeap = new GenCollectedHeap(gc_policy);
}
.
.
.
```
<br/>
#####SERIALGC switched OFF - platforms that support both types of GC?
```java
.
.
.

Universe::initialize_heap()

if (UseParallelGC) {
    Universe::_collectedHeap = new ParallelScavengeHeap();
} else if (UseG1GC) {
    G1CollectorPolicy* g1p = new G1CollectorPolicy();
    G1CollectedHeap* g1h = new G1CollectedHeap(g1p);
    Universe::_collectedHeap = g1h;
} else {
    GenCollectorPolicy* gc_policy;

    if (UseSerialGC) {
        gc_policy = new MarkSweepPolicy();
    } else if (UseConcMarkSweepGC) {
        if (UseAdaptiveSizePolicy) {
            gc_policy = new ASConcurrentMarkSweepPolicy();
        } else {
            gc_policy = new ConcurrentMarkSweepPolicy();
        }
    } else { // default old generation
        gc_policy = new MarkSweepPolicy();
    }

    Universe::_collectedHeap = new GenCollectedHeap(gc_policy);
}
.
.
.
```