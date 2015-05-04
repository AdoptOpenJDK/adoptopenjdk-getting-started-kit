# Efetuando mudancas na classe Random.java class

```
$ cd $HOME/sources/jdk8/
```
ou
```
$ cd $HOME/sources/jdk8_tl/
```
ou
```
$ cd $HOME/sources/jdk9/
```
```
$ gedit jdk/src/share/classes/java/util/Random.java ```
ou
```
$ gedit jdk/src/java.base/share/classes/java/util/Random.java 
```

Encontre a função next() dentro da classe ```Random.java```

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

Nota: ```nextInt()``` chama ```next()``` com os parametros ignorados retornará sempre 100.

Undo your changes to ```jdk/src/java.base/share/classes/java/util/Random.java``` or ```jdk/src/share/classes/java/util/Random.java``` and rebuild the images by running.

Para desfazer as mudanças, siga os passos abaixo:
```
$ cd jdk/src/java.base/share/classes/java/util

$ hg revert Random.java

$ make images
```