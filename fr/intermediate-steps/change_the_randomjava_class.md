# Changer la classe Random.java

Vous aurez besoin de ces [Scripts utiles](../handy-scripts-for-OpenJDK-developers.md) avant de faire quoi que ce soit ci-dessous.

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

Trouvez la fonction next() dans ```Random.java```

```java
protected int next(int bits) {
	return 100;                     ⇐   notre code

     /*long oldseed, nextseed;    ⇐    block commenté
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
Le même nombre est imprimé tout le temps ! Ce n'est pas aléatoire.
```

Note: ```nextInt()``` appelle ```next()``` avec un paramètre qui est ignoré et au contraire retourn la valeur constante 100.

Annulez vos changements dans ```jdk/src/java.base/share/classes/java/util/Random.java``` ou ```jdk/src/share/classes/java/util/Random.java``` et reconstruisez les images en lançant :

Pour annulez vos changements, vous pouvez utilisez :
```
$ cd jdk/src/share/classes/java/util
```

ou
```
$ cd jdk/src/java.base/share/classes/java/util

$ hg revert Random.java

$ make images
```