# Change the StringBuffer.java class to add a method

You will need these [Handy bash scripts](../handy-scripts-for-OpenJDK-developers.md) before you do any of the below.

```
$ cd $HOME/sources/jdk8_tl/
```
or
```
$ cd $HOME/sources/jdk8/
```
or 
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

Note: please ensure that the annotations at the top of all the test file are preserved, they are needed for the jtreg.

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

Write the below tests in IsEmptyTest.java in some folder 

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

Write the below (TestNG) tests in the IsEmptyTestNG.java file

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

or 

```
$ make jdk
```

Finally run JTReg commands shown in [How to use JTReg… - Java Regression Test Harness ?](how_to_use_jtreg_-_java_regression_test_harness.md) to ensure the tests run, and pass (see section below).

Change the implementation to something else and re-run the tests again to see them fail.