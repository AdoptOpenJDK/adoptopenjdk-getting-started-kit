# Alterea a classe StringBuffer.java adicionando um método

Você precisará dos [bash scripts auxiliares](../handy-scripts-for-OpenJDK-developers.md) antes de você executar qualquer um dos passos abaixo.

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
ou
```
$ gedit jdk/src/java.base/share/classes/java/lang/StringBuffer.java
```

Nota: por favor garanta que as anotações nos cabeçalhos dos testes sejam preservados, eles são necessário para a utilização do jtreg.

```java
 /**
    * Mitia's greatest contribution ever!
    * 
    * @return boolean 
    */
 public boolean isEmpty() {
             return count==0;
 }
```

Escreva o teste abaixo em IsEmptyTest.java em qualquer diretório

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

Escreva o teste (TestNG) no arquivo IsEmptyTestNG.java

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

E por fim execute os comandos JTReg tais como em [How to use JTReg… - Testes de regressão Java](how_to_use_jtreg_-_java_regression_test_harness.md) para garantir que os testes executam corretamente, veja a seção abaixo:

Modifique a implementação para alguma outra coisa e execute os testes novamente para ve-los falhar.