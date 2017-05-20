# Modifique a classe Random.java

Você precisará dos [bash scripts auxiliares](../handy-scripts-for-OpenJDK-developers.md) antes de executar qualquer dos passos abaixo.

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

Localize a função next() em ```Random.java```

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
Continua exibindo o sempre mesmo número! Isso não é randômico.
```

Note: ```nextInt()``` calls ```next()``` with a parameter which is ignored and instead returns the hardcoded 100.

Desfaça suas modificações em ```jdk/src/java.base/share/classes/java/util/Random.java``` ou ```jdk/src/share/classes/java/util/Random.java``` e reconstrua as imagens executando:


Para desfazer as alterações, você pode:
```
$ cd jdk/src/share/classes/java/util
```

ou
```
$ cd jdk/src/java.base/share/classes/java/util

$ hg revert Random.java

$ make images
```