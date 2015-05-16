# Change the Random.java class

You will need these [Handy bash scripts](../handy-scripts-for-OpenJDK-developers.md) before you do any of the below.

```
$ cd $HOME/sources/jdk8/
```
or
```
$ cd $HOME/sources/jdk8_tl/
```
or
```
$ cd $HOME/sources/jdk9/
```
```
$ gedit jdk/src/share/classes/java/util/Random.java ```
or
```
$ gedit jdk/src/java.base/share/classes/java/util/Random.java 
```

Locate the next() function in ```Random.java```

```java
protected int next(int bits) {
	return 100;                     ⇐   our code

     /*long oldseed, nextseed;    ⇐    commented block
     AtomicLong seed = this.seed;
     do {
         oldseed = seed.get();
         nextseed = (oldseed * multiplier + addend) & mask;
     } while (!seed.compareAndSet(oldseed, nextseed));
     return (int)(nextseed >>> (48 - bits));*/
}
```

```java
$ gedit ChangeRandom.java 

import java.util.Random;

public class ChangeRandom {
	public static void main(String[] args) {
		System.out.println();
		Random someRandom = new Random();
		int letSeeWhatIGet = someRandom.nextInt();
		System.out.println(letSeeWhatIGet);
		int letSeeWhatIGetAgain = someRandom.nextInt();
		System.out.println(letSeeWhatIGetAgain);

		if (letSeeWhatIGet == letSeeWhatIGetAgain) {
		   System.out.println("Its printing the same number over-and-over again! That's not random.");
		} else {
		   System.out.println("Its printing a different number each time! Now that is random.");
		}
	}
}
```

```
$ make images
.
.
.
$ bash buildAndRunTheChangedRandom.sh

Output
100
100
Its printing the same number over-and-over again! That's not random.
```

Note: ```nextInt()``` calls ```next()``` with a parameter which is ignored and instead returns the hardcoded 100.

Undo your changes to ```jdk/src/java.base/share/classes/java/util/Random.java``` or ```jdk/src/share/classes/java/util/Random.java``` and rebuild the images by running.

To undo the changes, one can use:
```
$ cd jdk/src/share/classes/java/util
```

or
```
$ cd jdk/src/java.base/share/classes/java/util

$ hg revert Random.java

$ make images
```