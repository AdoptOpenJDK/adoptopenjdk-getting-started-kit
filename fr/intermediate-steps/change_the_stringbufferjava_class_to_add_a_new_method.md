# Changer la classe StringBuffer.java class en y ajoutant une méthode

Vous aurez besoin de ces [Scripts utiles](../handy-scripts-for-OpenJDK-developers.md) avant de faire quoi que ce soit ci-dessous.

```
$ cd $HOME/sources/jdk8_tl/
```
ou
```
$ cd $HOME/sources/jdk8/
```
ou 
```
$ cd $HOME/sources/jdk9/
```

```
$ gedit jdk/src/share/classes/java/lang/StringBuffer.java
```
or
```
$ gedit jdk/src/java.base/share/classes/java/lang/StringBuffer.java
```

Note: assurez vous de conserver les annotations au début de chaque fichier de test, elles sont nécessaires à jtreg.

```java
 /**
    * Meilleur code jamais contribué par Mitia !
    * 
    * @return boolean 
    */
 public boolean isEmpty() {
             return count==0;
 }
```

Ecrivez les tests ci-dessous dans IsEmptyTest.java dans un répertoire quelconque 

```java
/* @test
 * @summary Test StringBuffer.isEmpty();
 * @run main IsEmptyTest
 */

public class IsEmptyTest {
	
	private static int failed =0;

	private static void testNew() {
		StringBuffer buffer = new StringBuffer();

		if (!buffer.isEmpty()) {
			System.out.println(
					"StringBuffer isEmpty on new object failed");
			failed++;
		}
	}

	private static void testReNew() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("a");
		buffer.delete(0, 1);

		if (!buffer.isEmpty()) {
			System.out.println(
			"StringBuffer isEmpty on appended and deleted element of object failed");
			failed++;
		}
	}

	private static void testNotEmpty() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("aa");
		
		if (buffer.isEmpty()) {
			System.out.println(
			"StringBuffer isEmpty on changed object failed");
			failed++;
		}
	}

	public static void main(String[] args) {
		testNew();
		testNotEmpty();
		testReNew();
		
		if (failed>0){
			throw new RuntimeException("Failed: "+failed);
		}
	}
}
```

Ecrivez les tests (TestNG) ci-dessous dans un fichier IsEmptyTestNG.java

```java
/* @test
 * @summary Test StringBuffer.isEmpty();
 * @run testng IsEmptyTestNG
 */

import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.lang.StringBuffer;

import org.testng.annotations.Test;

public class IsEmptyTestNG {

	@Test
	public void testNew() {
		StringBuffer buffer = new StringBuffer();

		assertTrue(buffer.isEmpty());
	}

	@Test
	public void testReNew() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("aa");
		buffer.delete(0, 2);

		assertTrue(buffer.isEmpty());
	}

	@Test
	public void testNotEmpty() {
		StringBuffer buffer = new StringBuffer();
		buffer.append("aa");
		
		assertFalse(buffer.isEmpty());
	}
}
```

```
$ make images
```

ou 

```
$ make jdk
```

Enfin lancez JTReg avec les commandes décrites dans [Utilisation de JTReg… - Java Regression Test Harness ?](how_to_use_jtreg_-_java_regression_test_harness.md) pour vous assurez que les tests se lancent et réussisses.

Changez l'implementation par quelque chose d'autre et relancez les tests pour les voir échoués.