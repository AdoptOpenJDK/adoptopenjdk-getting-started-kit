# Efetuando mudancas na classe StringBuffer.java

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

Nota: Confirme que as @annotations no topo das classes de teste não foram alteradas, estas são requeridas pelo jtreg.

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

Escreva o teste abixo em IsEmptyTest.java no mesmo diretorio

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

Escreva os testes abaixo no formato (TestNG) dentro do arquivo IsEmptyTestNG.java

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

E para finalizar rode os comandos JTReg acima para executar os testes.

Mude sua implementação e confirme que suas mudanças fazem os testes falhar.