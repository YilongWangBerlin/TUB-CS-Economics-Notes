d# Backtracking
![](attachment/e3038c1ce935e4f723318422c660d6ec.png)
![](attachment/22b7d1e38b49e7adb114e7bcd859457f.png)
![](attachment/3039862eb7c3960d107d7dc23a285835.png)
![](attachment/2d525f3c957c0c820ab72837e1217a58.png)
![](attachment/fb40d843976ee9fa81f84466bc7d5e1d.png)
![](attachment/f246ddde272164e1848af9af36b178e3.png)
![](attachment/0097dc66f11dfd3670b6ef7985cb009b.png)
![](attachment/f51abebb2e7f3d541adc0102c0179642.png)
![](attachment/19da22d0bc856e09f8d6b340f1e29ff3.png)
![](attachment/353fd18845148774e6581b97da633810.png)


# Greedy Algorithmen
![](attachment/80a4288810b7cce3312eda5a96bc7d2a.png)
![](attachment/cd12ee4b9527f2996e19a48bb3457ed4.png)
![](attachment/0b2860c09b8d0587664cf631e3c30485.png)
![](attachment/250cb4ca8598e48d7f82e1418aead94d.png)
![[截屏2024-05-14 12.50.45.png]  
![](attachment/e10323b632d8cc69ce4ad1038d5a3cbb.png)
![](attachment/0eb729484a7a28ff6b980d1d7938620b.png)
![](attachment/9de858289cbec1b32f011e26d5d66a62.png)
![](attachment/2e29c190260fd13a5e5f10886894d454.png)
![](attachment/78bd59f418454262a47d845055cc91fa.png)
![](attachment/aa11929447c6143226467501ec5b2d0a.png)

# PriorityQueue

• Elemente mit der höchsten Priorität werden als erstes wieder herausgenommen 
• Elemente müssen vergleichbar sein

![](attachment/21682f24b29104c1a431f7fcdf70aef3.png)
![](attachment/ce70df9f2fc9eec0c97d36dddf1fc9b8.png)
![](attachment/013b4018421ccd1261690727dd597651.png)
![](attachment/20cf275090ae99378943ddc1332727d8.png)

# Aufgabe 1
![](attachment/46863d606374b4ca7f902767dfdbd078.png)
![](attachment/9d9f87f26c9d0f356afcbe1c51e929d1.pdf)

# Aufgabe 2
![](attachment/435c7c2216230f69c8bb5f47840d1f51.png)
![](attachment/ed7813650cac87d0e6d844230cb47867.png)
![](attachment/8ca15b374ea4f4d45e9dec6e6473acd9.png)
![](attachment/743a21e84e124d82f3af00acf4e69655.png)
# Junit
![](attachment/5857d837d69faf5a73a2c4fe4eab4e48.png)
![](attachment/b33ee8a3a252c7c5b56c0697cc6765f6.png)

![](attachment/88fc645c5e6ed4b85dca4229aa45c232.pdf)
```java

import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

public class StringGenomeTest {

//	public void addNucleotide(char c) {
//		if (c == 'A' || c == 'C' || c == 'G' || c == 'T')
//			s = s + c;
//		else
//			throw new RuntimeException("Illegal nucleotide");
//	}
	@Test
	public void testAddNucleotide() {
		//TODO
		StringGenome genome = new StringGenome();
		genome.addNucleotide('A');
		assertEquals("A", genome.toString());
		genome.addNucleotide('C');
		genome.addNucleotide('G');
		genome.addNucleotide('T');
		assertEquals("ACGT", genome.toString());

		try {
			genome.addNucleotide('X');
			fail();
		} catch (Exception e) {
			assertEquals("ACGT", genome.toString());
		}
	}

	@Test
	public void testNucleotideAt() {
		//TODO
	}

	@Test
	public void testLength() {
		//TODO
		StringGenome genome = new StringGenome();
		// hier muss die laenge 0 sein
		assertEquals(0, genome.length(), "this is an error message");
		//assertTrue(0 == genome.length());
		genome.addNucleotide('A');
		genome.addNucleotide('C');
		assertEquals(2, genome.length());
	}

	@Test
	public void testToString() {
	//TODO
	}

	@Test
	public void testEqualsObject() {
	//TODO
	}

}

```