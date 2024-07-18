---
noteID: 1112a50f-61e0-43e1-9a08-c366f6eb4916
---
# Prog1



## 1 - Imperative Programmierung

### Allgemeiner Aufbau von Klassen

- Code ist in Klasse enthalten
- Eigene Datei für jede Klasse
- Code, der beim Start ausgeführt werden soll in `main`-Methode

```java=1
public class HelloWorld{
    public static void main(String[] args){
        //some code
    }
}
```
### Kommentare

```java=1
//Kommentar über eine Zeile

/*Kommentar 
 * über 
 * mehere
 * Zeilen 
 * */
```
- Javadoc-Kommentare zum Kennzeichnen und Beschreiben von Methoden

```java=1
/* Gibt die Summe von zwei Werten zurück
 * 
 * @param a der erste Summand
 * @param b der zweite Summand 
 * @return die Summe von a und b
 * */
public static int sum(int a, int b){
    return a+b;
}
```

### Variablen

- Variablen sind Container zum Speichern von Werten
- Verschiedene primitive Typen:
    - `boolean`: Wahrheitswerte (true und false)
    - `char`: Zeichen (z.B. 'g')
    - `byte`, `short`, `int`, `long`: Ganzzahlen (z.B. 24)
    - `float`, `double`: Kommazahlen (z.B. 2,5)
- Objektdatentyp:
    - `String`: Zeichenketten (z.B. "HelloWorld")
- Zuweisung von Werten zu Variablen:

```java=1
int i = 3;
long l = 4L;
char c = 'c';
float f = 23.4;

String s = "Hello World";
```
### Umwandlung von Variablen
```java=1
int i = (int) 5L; //Umwandlung von long in int
```
### Operatoren
#### Operationen mit einem Operator
| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| +x       | kein Effekt   |
| -x | negativer Wert    |
| x++         | Post-increment     |
| x- -        | Post-decrement   | 
| ++x   | Pre-increment |
| - -x|Pre-decrement|

- Post heißt, dass der Wert nach der Operation verändert wird, bei pre hingegen davor
```java=1
x=5;
x--; //x hat jetzt den Wert 4
```
#### Operationen mit zwei Operatoren

| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| a+b       | Addition   |
| a-b | Subtraktion    |
| a*b         | Multiplikation    |
| a/b        | Division   | 
| a%b  | Modulo |
- Modulo berechnet den Rest der Division
```java=1
int x = 10%3; //x hat jetzt den Wert 1
```
| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| a<b       | Kleiner als   |
| a<=b | Kleiner gleich    |
| a>b         | Größer als    |
| a>=b        | Größer gleich  | 
| a==b  | Gleich |
| a!= b | Ungleich |

```java=1
int i1 = 10;
int i2 = 11;

boolean a = i1==i2; //a ist false
boolean b = i1>=i2; //b ist flase
boolean c = i1!=i2; //c ist true
```

#### Operatoren für boolean-Operationen

| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| a&b       | Und   |
| a\|b | Oder    |
| a^b         |Entweder oder    |
| !a    | Nicht  | 
- `a&&b` bricht die Verarbeitung der Bedingung ab, wenn sie nicht mehr zu erfüllen ist, also wenn das erste Element falsch ist. `a&b` evaluiert a und b
- `a||b` bricht die Verarbeitung der Bedingung ab, wenn sie bereits durch a erfüllt ist, also wenn a true ist. `a|b` evaluiert a und b

### Printen von Werten

- `System.out.println` printet eine neue Zeile. `System.out.print` printet, ohne eine neue Zeile zu erstellen
- Konkatenation (Aneinanderhängung) von Strings mit `+`. Dabei werden Zahlen implizit in Strings umgewandelt

```java=1
System.out.println("Hello"); //printet "Hello"
System.out.println("Hello" + "World"); //printet "HelloWorld"
System.out.println("Hello" + 3); //printet "Hello3"
```
### Mathe-Funktionen

| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| Math.sqrt       | Wurzel   |
| Math.pow | Potenz   |
| Math.abs         | Betrag    |
| Math.random        | Zufällige Zahl zwischen 0 und 1  | 

### Bedingungen

- Bedingungen bestehen aus `if`, beliebig vielen `if else` und maximal einem `else`
- Inhalt der einzelenen Bedingungsblöcke wird eingerückt
```java=1
int i = 4;

if(i >= 3){
    i++;
}else if (i != 34 && i > 20){
    i--;
}else{
    System.out.println(i);
}
```
- Switch Case ist eine  Möglichkeit verschiedene Werte einer Variable abzugleichen
- `default`ist optional
- `break`, damit der Switch Case verlassen wird, wenn Bedingung erfüllt

```java=1
int i = 1;

switch(i){
    case 0: i++;
            break;
    case 1: i--;
            break;
    case 2: i+=4:
            break;
    default: i-=23;
}
```

### Schleifen

- Mehrmalige Ausführung von Code
- 3 verschiedene Arten von Schleifen: `for`, `while` und `do while`
- `for`-Schleife nach der Logik (i startet bei dem Wert 0; die Schleife läuft, solange i<10; i erhöht sich in jeder Iteration um 1):
```java=1
for(int i=0; i<10; i++){
    System.out.println(i);
}
//Output: 0,1,2,3,4,5,6,7,8,9
```
- `while`-Schleife, die zwei Mal ausgeführt wird:
```java=1
int i = 0;
while(i<2){
    i++;
}
```
- `do while`-Schleife, die zwei Mal ausgeführt wird:
```java=1
int i = 0;
do{
    i++;
}while(i<2);
```
#### Break und Continue

- `continue` beendet die Ausführung der aktuellen Iteration einer Schleife
- `break` beendet die Ausführung die gesamte Schleife und springt direkt zum Code darunter

```java=1
for (int i = 0; i < 3; i++){
    if (i==1){
        continue;
    }
    System.out.println(i);
} //Output: 0,2
```
```java=1
for (int i = 0; i < 3; i++){
    System.out.println(i);
    if (i==1){
        break;
    }
} //Output: 0,1
```

### Arrays

-  Datenstuktur zur Speicherung von mehreren Wertern der gleichen Art
-  Zugriff mit Hilfe von Index (Zählung beginnt bei 0)
-  Länge ist fix, Elemente innerhalb des Arrays können verändert werden
-  Länge eines Arrays mit `length`
-  Default Wert der Arrayeinträge ist `null`
-  Erstellung eines int-Arrays der Länge 3:

```java=1
int [] arr = new int [3];
arr[0] = 1;
arr[1] = 2;
arr[2] = 3;

System.out.println(arr.length); //Printet 3
```
- Veränderung von Werten und printen eines Wertes:
```java=1
arr[1] = 10;
System.out.println(arr[1]); //Printet 10
```

#### Iteration durch Array

```java=1
int [] arr = new int [2];
arr[0] = 1;
arr[1] = 2;

for (int i = 0; i < arr.length; i++){
    System.out.println(arr[i]);
}
```
- alternativ gibt es eine vereinfachte Variante der `for`-Schleife, die `for each`-Schleife
- im folgenden Beispiel nimmt `i` bei jedem Durchlauf den nächsten Wert im Array an

```java=1
for (int i : arr){
    System.out.println(i);
}
```

#### Hinzufügen eines Elements

- Komplettes ursprüngliches Array muss kopiert werden und in einem neuen Objekt um einen neuen Eintrag ergänzt werden
- Array der Länge 2 soll um ein Element erweitert werden:
```java=1
int [] arr1 = new int [2];
arr1[0] = 1;
arr1[1] = 2;

//Kopie:
int [] arr2 = new int [arr1.length + 1];
for (int i = 0; i < arr1.length; i++){
    arr2[i] = arr1[i];
}
//Neues Element
arr2[arr1.length] = 3
```

#### Mehrdimensionale Arrays

- Beliebig viele Dimensionen möglich
- Erstellung eines Arrays der Dimension 2x3 und Zuordnung eines Wertes:

```java=1
int [][] multiDimArr = new int [2][3];
multiDimArr[0][1] = 32;
```

### Klassenmethoden

- Möglichkeit Code außerhalb der Main-Methode zu schreiben
- Aufruf aus der main oder aus anderen Methoden
- Syntax: Sichtbarkeit(z.B. public oder private), static, Rückgabetyp (z.B. void wenn nichts zurückgegeben werden soll, String, int, ...), Methodenname, Parameter
- Einfache Methode:

```java=1
public static void tuEtwas(int a, String s){
    System.out.println(s + a);
}
```
- Ganze Klasse mit Aufruf dieser Methode:

```java=1
public class MeinProgramm{
    
    public static void main(String args[]){
        int x1 = 4;
        String s = "Die Variable hat den Wert: ";
        
        tuEtwas(x1, s);
    }
    
    public static void tuEtwas(int a, String s){
        System.out.println(s + a);
    }
    
}
```
- Achtung: bei Parametern, die Objektdatentypen sind, wird der Methode eine Referenz übergeben und nicht der Wert

#### Methoden mit Rückgabe

- mit `return` kann Methode Werte zurückgeben
```java=1
public static int addiereZahlen(int a, int b){
    int ergebnis = a+b;
    return ergebnis;
}
```

#### Methodenüberladung

- Methodenüberladung heißt mehrere Methoden in einer Klasse mit dem gleichen Namen aber underschiedlichen Parametern zu haben
- Compiler ruft dann Methode auf, die am spezifischsten ist

1. Wähle alle potentiellen Methoden aus
2. Eine Methode m1 ist spezifischer ist als eine andere Methode m2, wenn alle Parameter von m1 identisch sind oder implizit zu den Parametern von m2 gecastet werden können
3. Gibt es eine spezifischste Methode, so wird diese aufgerufen. Wenn mehrere Methoden gleichwertig sind, dann gibt es einen Fehler



### Rekursion

- Alternative zu Schleifen, bei der sich eine Methode immer wieder selbst aufruft
- Besteht aus einem Rekursionsanker und einem Rekursionsrumpf

```java=1
public static long fakultaet(long z){
    if (z==1)
        return z;
    else
        return z*fakultaet(z-1);
}
```


### Checkfragen
- [ ] Um ein einziges Print-Statement zu schreiben, was muss man dafür in einer Java-Datei außer dem `System.out.println()` schreiben?
- [ ] Was macht die `main`-Methode besonders?
- [ ] Was ist ein primitiver Datentyp? Welcher Datentyp ist nicht primitiv?
- [ ] Was ist der Unterschied zwischen `++a` und`a++`?
- [ ] Braucht man zwingend ein `else` bei Bedingungen?
- [ ] Was passiert, wenn man das `break` im Switch Case weglässt?
- [ ] Wofür wird welche Schleife verwendet? Wie viele gibt es?
- [ ] Mit welchem Keyword bricht man die Ausführung einer ganzen Schleife ab?
- [ ] Wie würde man ein Array um ein Element verkürzen?
- [ ] Wie würde man durch ein mehrdimensionales Array iterieren?
- [ ] Wie kennzeichnet man eine Methode, die nichts zurückgibt?
- [ ] Was passiert bei Methodenüberladung, wenn keine spezifischste Methode existiert?
- [ ] Kann man jede Schleife auch rekursiv lösen?



## 2 - Objektorientierte Programmierung

### Klassen und Instanzen

- Klasse: Schablone, die bestimmte Eigenschaften beschreibt


```java=1
public class Apfel{
    String farbe;
    double masse;
    double volumen;
    int pflückjahr;
}
```

- Objekt: Instanz einer solchen Schablone mit verschiedenen Werten für die Eigenschaften
- Erstellen eines neuen Objekts mit Schlüsselwort `new`
```java=1
Apfel a = new Apfel();
a.farbe = "grün";
a.pflückjahr = 2021;
```

### Klassen- und Instanzvariablen

- Instanzvariablen variieren von Instanz zu Instanz (z.B. Farbe oder Masse eines Apfels)
- Klassenvariablen sind für alle Instanzen der Klasse gleich. Zur Kennzeichnung nutzt man `static`

```java=1
public class Apfel{
    //Instanzvariablen
    String farbe;
    double masse;
    double umfang;
    //Klassenvariable
    static double pi = 3.14159;
}
```
- typischer Usecase von Klassenvariablen: ID-Generierung:
```java=1
public class Apfel{
    static long nextID = 0;
    long apfelId = nextID++;
}
```
- außerdem oft genutzt für Konstanten (z.B. Pi) und dann gekennzeichnet mit `final`

### Klassen- und Instanzmethoden

- ähnlich wie bei Variablen: Klassenmethoden sind `static` und unabhänig von Instanzen
- Instanzmethoden sind abhänig von spezifischen Objekten
- `main`-Methode ist Klassenmethode
- Beispiel für Instanzmethode:
```java=1
public class Apfel{
    boolen enthältWurm = false;
    
    public void lassWurmEinziehen(){
        this.enthältWurm = true;
    }
}
```
- Aufruf der Instanzmethode

```java=1
Apfel a = new Apfel();
System.out.println(a.enthältWurm); //printet false
a.lassWurmEinziehen();
System.out.println(a.enthältWurm); //printet true
```
- Aufruf einer Klassenmethode mit dem Namen der Klasse 

### Zugangsmodifier

- Können benutzt werden, um Methoden oder Attribute (Variablen) sichtbar zu machen oder von außen zu verstecken

```java=1
public class Apfel{
    public boolean farbe;
    protected double volumen;
    double masse; //entspricht "package"
    private String ortDerPflückung;
}
```
- `public` kann von überall gesehen werden
- `protected` kann von allen Kindklassen gesehen werden
- `package` kann von alles Klassen desselben Packages gesehen werden
- `private` kann nur innerhalb derselben Klasse gesehen werden


### Getter und Setter

- `Getter` sind Instanzmethoden, die keine Parameter haben und Werte von Variablen zurückgeben
- `Setter` sind Instanzmethoden, die einen Wert als Parameter haben und ihn einer Variablen zuweisen

```java=1
public class Apfel{
    private boolean istVerfault = false;
    
    //Getter
    public boolean getVerfault(){
        return this.istVerfault;
    }
    
    //Setter
    public void setVerfault(boolean v){
        this.istVerfault = v;
    }
}
```

### Konstruktoren

- Regeln, was passiert wenn ein neues Objekt einer Klasse erstellt
- sieht ähnlich aus wie eine Methode, hat aber keinen Rückgabewert und heißt genau so wie die Klasse

```java=1
public class Apfel{
    
    double dichte;
    
    public Apfel(double dichte){
        this.dichte = dichte;
        System.out.println("Ein neuer Apfel der Dichte " + dichte + " wurde soeben erstellt.")
    }
    
}
```

- Aufruf des Konstruktors:

```java=1
Apfel a = new Apfel(34.3);
```


### Klassen für Datenrepräsentation

#### String

- String ist kein primitiver Datentyp, sondern ein Objektdatenryp
- basiert auf einem char-Array
- es existieren verschiedene Instanzmethoden auf Objekten vom Typ `String`

```java=1
String s = "Apfel";
String s2 = new String("Apfel"); //Alternativer Konstruktor
s.replaceAll("p", "q");
```

#### StringBuffer

- Alternative zu String, die nicht auf Arrays basiert
```java=1
StringBuffer sb = new StringBuffer("Apfel");
sb.reverse();
sb.append(" und Birne");
```

#### Wrapper-Klassen

- Objekte analog zu den primitiven Datentypen

| Primitiver Typ          | Wrapper-Klasse               |
| ----------------- |:----------------------- |
| int       | Integer   |
| double | Double    |
| long        |Long    |
| boolean    | Boolean  | 
| float | Float |
| short | Short |
| byte | Byte |
| char | Character |


```java=1
// Konventieren von String zu Datenklasse:
int i = Integer.parseInteger("5");

//Operationen mit primitiven und Objektdatentypen:
int i = new Integer("20") + 5
Integer i = 1 + 2
```

### Vererbung

- zur Darstellung von Beziehungen zwischen Klassen
- Eigenschaften und Methoden können an Kindklassen vererbt werden
- Methoden können in den Kindklassen spezifiziert werden
- Erben einer Klasse mit Schlüsselwort `extends`
- es kann nur von maximal einer Klasse geerbt werden

```java=1
public class Tier{
    double masse;
}

public class Krokodil extends Tier{
    String name;
}
```
- Erstellen eines Objekts vom Typ Krokodil:

```java=1
Krokodil kroko = new Krokodil();
kroko.name = "Kroko";
kroko.masse = 120.5;
```
- es ist möglich ein Objekt von einem Typen in einer Variablen des Elterntypen zu speichern:

```java=1
Tier t = kroko;
System.out.println(t.name); //Nicht möglich
System.out.println(t.masse); //Möglich
```

#### Methodenüberschreiben

- heißt, dass eine Kindklasse eine Methode einer Elternklasse spezifiziert

```java=1
public class Tier{
    double masse;
    void move(){
        System.out.println("Das Tier bewegt sich!");
    }
}

public class Krokodil extends Tier{
    String name;
    void move(){
        System.out.println("Das Krokodil krabbelt!");
    }
}
```
- Aufruf der Methoden:
```java=1
Krokodil kroko = new Krokodil();
Tier t = new Tier();
kroko.move(); //Aufruf der Methode von Krokodil
t.move(); //Aufruf der Methode von Tier
t = kroko;
t.move(); //Aufruf der Methode in Krokodil
```

### Klasse Object

- Alle Klassen erben von der Klasse `Object`, was die Wurzel von allen Klassen ist
- typischerweise überschrieben Klassen einige Methoden von `Object`
    - `equals()` zum Vergleich von zwei Objekten
    - `hashCode()` gibt eine Hash-Repräsentation der Klasse zurück
    - `toString()` gibt eine String-Repräsentation der Klasse zurück

### Super und this

#### Super und this im Konstruktor

- `super` und `this` dienen zum Zugriff auf Konstruktoren der Superklasse oder der eigenen Klasse
- `super` und `this` müssen die ersten Aufrufe im Konstruktor sein

```java=1
public class Tier{
    double masse;
    Tier(double masse){
        this.masse = masse;
    }
}

public class Krokodil extends tier{
    String name;
    String farbe;
    
    Krokodil(int masse, String name, String farbe){
        super(masse);
        this.name = name;
        this.farbe = farbe;
    }
    
    Krokodil(int masse, String name){
        this(masse, name, "grün"); //leitet an anderen Konstruktor weiter
    }
}
```

#### Super zum Aufruf einer Supermethode

```java=1
public class Tier{
    double masse;
    
    public String toString(){
        return "Ein Tier der Masse " + this.masse + "kg";
    }
}

public class Krokodil extends Tier{
    String name;
    String farbe;
    
    public String toString(){
        return super.toString() + " und vom Typ Krokodil hat den Namen " + this.name;
    }
}
```

### Objekterzeugung

- während der Objekterzeugung werden verschiedene Schritte durchlaufen

1. Klassenvaiablen von Eltern nach Kind (`static`)
2. Instanzen (von Eltern nach Kind)
    2.1 Instanzvariablen
    2.2 Konstruktoren

### Abstrakte Klassen und Methoden

- Klassen, von denen man keine Instanzen erstellt kann
- ein Objekt vom Typen einer abstrakten Klasse würde kein Sinn machen
- Beispiel: `Tier t = new Tier()` würde keinen Sinn machen

```java=1
public abstract class Tier{...}

public class Krokodil extends Tier{...}
```

- abstrakte Methoden sind Methoden, die nicht implementiert sind und in den erbenden Klassen überschrieben werden müssen
- sobald eine Klasse eine abstrakte Methode hat, muss auch ihre Signatur `abstract` sein

```java=1
public abstract class Tier{
    abstract String machGeräusch();
}


public class Krokodil extends Tier{
    
    @Override
    String machGeräusch(){
        return("Rawww"); //Was für ein Geräusch macht ein Krokodil?
    };
}
```

### Interfaces

- Interfaces sind eine Alternative zu abstrakten Klassen, die meist für bestimmte Eigenschaften stehen
- Interfaces ermöglichen Mehrfachvererbung
- Klassen können nur von einer Klasse erben, aber beliebig viele Interfaces implementieren
- Methoden aus dem Interface werden überschrieben

```java=1
public interface KannSchwimmen{
    String machSchwimmGeräusch();
}

public abstract class Tier{
    abstract String machGeräusch();
}

public class Krokodil extends Tier implements KannSchwimmen{
    
    @Override
    String machGeräusch(){
        return("Rawww");
    }
    
    String machSchwimmGeräusch(){
        return("Platsch");
    }
}
```

### Enums

- Typen, die nur eine bestimmte Menge an Werten annehmen können
- Zugriff mit `nameDesEnums.wertDesEnums`
- gut kombinierbar mit switch case

```java=1
enum Jahreszeiten{
    SOMMER, HERBST, WINTER, FRÜHLING;
}

public class Jahreszeitenwechsel{
    
    Jahreszeiten aktuell = Jahreszeiten.HERBST;
    
    public void wechseleJahreszeit(){
        switch(aktuell){
            case (SOMMER): aktuell = Jahreszeiten.HERBST; break;
            case (HERBST): aktuell = Jahreszeiten.WINTER; break;
            case (WINTER): aktuell = Jahreszeiten.FRÜHLING; break;
            case (FRÜHLING): aktuell = Jahreszeiten.SOMMER; break;
        }
    }
    
}
```

### Checkfragen
- [ ] Was ist der Unterschied zwischen Klassenmethoden und Instanzmethoden?
- [ ] Wie generiert man Ids?
- [ ] Was muss gemacht werden, bevor man eine Instanzmethode aufruft?
- [ ] Wie kann man einen anderen Konstruktor derselben Klasse aufrufen und wie einen der Superklasse?
- [ ] Welches Kennzeichnungswort benutzt man für das Kennzeichenen von überschiebenen Methoden?
- [ ] Was genau ist die Klasse `Object`?
- [ ] Was bedeutet hashen? Wie wird dies im Zusammenhang mit Objekten verwendet?
- [ ] Was genau passiert bei der Objekterstellung?
- [ ] Wieviele Klassen können von einer anderen Klasse erben?
- [ ] Können abstrakte Klassen auch nicht abstrakte Methoden besitzen?
- [ ] In welchen Fällen macht es Sinn ein Interface statt einer abstrakten Klasse zu benutzen?
- [ ] Ist es möglich, Methoden in Interfaces schon zu spezifizieren?
- [ ] Wie kann man eine Variable vom Typen eines Enums erstellen und initialisieren?


## 3 - Algorithmen und Datenstrukturen

### Suchalgorithmen

#### Lineare Suche

- intuitive Suche von Elementen: Iteration durch gesamte Datenstruktur und Abbruch, wenn Element gefunden wurde



```java=1
int [] array = {1,2,3,4,5};
int suchwert = 4;
int ergebnis = -1;
for(int i=0;i<array.length;i++){
    if(array[i]==suchwert){
        ergebnis = i; //Ergebnis hat dann Wert vom Index des Suchwerts
        break;
    }
}
```
- Komplexität: O(n)

#### Binäre Suche

- nach dem Prinzip "Teile und Herrsche": 
    1. Teile die Liste durch 2
    2. Ist der gesuchte Wert kleiner oder größer als mittlerer Wert der Liste?
    3. Wenn größer -> nächste Teilliste ist alles ab der Mitte, beginne von vorne
    4. Wenn kleiner -> nächste Teilliste ist alles vor der Mitte, beginne von vorne
    5. Wenn gleich -> gefunden
- Komplexität: O(log(n))

``` java=1
// gibt den Index von x zurück, wenn x in arr, ansonsten -1
int binarySearch(int [] arr, int l, int r, int x){
	if (r >= l) {
		int mid = l + (r - l) / 2;

		if (arr[mid] == x) //gefunden
			return mid; 

		if (arr[mid] > x) //x ist kleiner als die Mitte
			return binarySearch(arr, l, mid - 1, x);
        
		return binarySearch(arr, mid + 1, r, x); // x ist größer als Mitte
	}
    
	return -1;
}

public static void main(String [] args){
	int [] arr = { 2, 3, 4, 10, 40 };
	int x = 10;
	int n = arr.length;
	int result = binarySearch(arr, 0, n - 1, x);
	(result == -1)
		? System.out.println("Element is not present in array")
		: System.out.println("Element is present at index " + result);
	return 0;
}
//Quelle: https://www.geeksforgeeks.org/binary-search/
```


### Sortieralgorithmen

#### Insertion Sort

- wie das Einsortieren von Karten
    1. Nimm ein Element nach dem anderen zum Einsortieren 
    2. Wenn noch kein Element vorhanden, dann ist das Element das Vergleichselement, ansonsten ist das kleinste Element das Vergleichselement
    4. Wenn das Element größer ist als das Vergleichselement, vergleiche mit dem nächsten (wiederhole dies, bis 3 erfüllt)
    5. Wenn das Element kleiner ist als das Vergleichselement, sortiere es davor ein

``` java=1
public static void insertionSort(int array[]) {  
    int n = array.length;  
    for (int j = 1; j < n; j++) {  
        int key = array[j];  
        int i = j-1;  
        while ( (i > -1) && ( array [i] > key ) ) {  
            array [i+1] = array [i];  
            i--;  
        }  
        array[i+1] = key;  
    }  
}  
//Quelle: https://www.javatpoint.com/insertion-sort-in-java
```

#### Selection Sort

- in jedem Druchlauf wird das kleinste Element von den unsortierten Elementen ausgewählt und mit dem ersten Element der unsortierten Elemente getauscht
```java=1
public static int[] selectionsort(int[] array) {
    for (int i = 0; i < array.length - 1; i++) {
        for (int j = i + 1; j < array.length; j++) {
            if (array[i] > array[j]) {
                //Tausch
                int temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }

    return sortieren;
}
// Quelle: https://www.java-programmieren.com/selectionsort-java.php
```

#### Weitere Sortieralgorithmen

- Bubble Sort: iteriert über Elemente, bis sie sortiert sind und vertauscht in jeder Iteration die Elemente, die in der falschen Reihenfolge sind
- Bubble Sort, Selection Sort und Insertion Sort sind langsame Sortieralgorithmen und werden deswegen in der (guten) Praxis nicht verwedet
- Schnellere Algorithmen: Quicksort, Heapsort, Mergesort (Komplexität O(n*log(n)))

### Datenstrukturen

#### Linked Lists

- Sequenz von Werten (ähnlich wie Arrays)
- Elemente verweisen jeweils auf Folgeelement (bei doppelt verlinkten Listen auch aufs Vorgängerelement)
- Einträge einer Liste bestehen nur aus Wert und der Referenz auf nächstes Objekt
```java=1
public class Listeneintrag{
    public Object value;
    public Listeneintrag next;
    
    public Listeneintrag(Object value, Listeneintrag next){
        this.value = value;
        this.next = next;
    }
}
```
- mögliche Methoden einer Liste:
```java=1
public class EinfachVerlinkteListe{
    public Listeneintrag head; //erstes Element
    
    public void append(Object value) {} //zum Anhängen
    public Object getValue (int position) {} //Wert an position bekommen
    public void deleteValue(Object value) {} //Wert von value löschen
    public void insertAtHead(Object value) {} //vorne value anfügen
    public void insertAfter(Object value, Object after) {} //Wert von value nach Wert von after einfügen
}
```
##### Hinzufügen von Elementen
```java=1
public void append(Object value){
    Listeneintrag element = head;
    if (element == null) {
        head = new Listeneintrag(value,null);
        return;
    }
    while (element.next != null) {
         element = element.next;
    }
    element.next = new Listeneintrag(value, null);
}
```
##### Löschen von Elementen
```java=1
public void deleteValue(int position){
    if (position < 0) {
        return;
    }
    Node element = head;
    for (int i = 0; i < position - 1; i++) {
        element = element.next;
    }
    if (element == 0) {
        head = element.next;
    } else {
        element.next = element.next.next;
    }
}
```
##### Einfügen am Kopf
```java=1
public void insertAtHead(Object value){
    if(head == null){
        head = new Listeneintrag(value, null);
        return;
    }
    head = new Listeneintrag(value, head);
}
```
#### Queues

- Nach dem Prinzip von Warteschlagen (First In First Out)
- Wie Listen, in denen man nur am Ende einfügen kann (Enqueue) und den Kopf entfernen kann (Dequeue)

#### Stacks

- Nach dem Prinzip von Stapeln (Last In First Out)
- Wie Listen, in denen man nur am Kopf einfügen kann (Push) und den Kopf entfernen kann (Pop)

#### Bäume

- Datenstruktur, die auf Knoten basiert
- Am Kopt ist `root`-Knoten, der keinen Elternknoten hat
- Jeder Knoten kann beliebig viele Kindknoten haben, hat aber genau einen Elternknoten (außer `root`)
- Bäume haben keine Zyklen
- Bei `Binärbäumen` haben Knoten maximal zwei Kindknoten
```java=1
public class Node{
    public Object value;
    public Node links;
    public Node rechts;
}
```
- Binärbäume können folgende Methoden haben:
```java=1
public class BinaryTree{
    
    private Node root; //Wurzel des Baums
    public void insert(int value) {} //Einfügen von value
    public Node findNode(Object o) {} //Finden von o
    public void toString() {} //String-Repräsentation des Baums
}
```

##### Einfügen von neuen Werten

1. Wenn der neue Wert kleiner ist als der des aktuellen Knotens, füge den neuen Wert im linken Subbaum ein. Wenn er größer ist, im rechten.
2. Wenn der ausgewählte Subbaum nicht existiert, füge den neuen Wert als direkten Kindknoten hinzu. Ansonsten beginne wieder bei 1. mit dem Subbaum.

##### Suchen von Elementen

Beginnend mit dem `root`-Knoten:
1. Wenn der aktuelle Knoten null ist, ist der Wert nicht im Baum enthalten
2. Wenn der aktuelle Knoten den Wert enthält, den wir suchen, dann gebe ihn zurück
3. Wenn der aktuelle Knoten einen Wert enthält, der größer ist als der, den wir suchen, wiederhole den Algorithmus für den linken Kindknoten.
4. Wenn der aktuelle Knoten einen Wert enthält, der kleiner ist als der, den wir suchen, wiederhole den Algorithmus für den rechten Kindknoten.

##### Tree traversal

- Verschiedene Möglichkeiten über einen Baum zu iterieren:
    - `Pre-Order`: für jeden Knoten wird erst der Knoten ausgegeben, dann der linke Subbaum und dann der rechte
    - `In-Order`: für jeden Knoten wird erst der linke Subbaum ausgegeben, dann der Knoten und dann der rechte Subbaum (Vorteil: Werte sind richtig sortiert)
    - `Post-Order`: für jeden Knoten wird erst der linke Subbaum ausgegeben, dann der rechte und zuletzt der Knoten
- Code für `in-Order`(Reihenfolge von 1., 2. und 3. müsste für die anderen nur vertauscht werden):

```java=1
private String inOrder(BinTreeNode current){ 
    String res = "";
    
    //1. Linker Teilbaum
    if (current.left != null) res += inOrder(current.left) + ",";
    
    //2. Knoten
    res += current.value;
    
    //3. Rechter Teilbaum
    if (current.right != null)res += "," + inOrder(current.right);
    
    return res;
}
```

### Collections

- Vorimplementierte Datenstrukturen (Listen, Bäume, Stacks, Queues, ... sind auch vorhanden)
- `Set` enthält keine Duplikate
- `Deque` "double-ended queue" kann als LIFO und FIFO-Datentruktur genutzt werden
- `Map`: Menge von Schlüssel-Wert Paaren. Der Schlüssel ist einzigartig und bildet auf einen beliebigen Wert ab
- Übersicht über Datentrstrukturen:

| Interface   | Hash Table |Resizable Array | Balanced Tree |Linked List | Hash Table + Linked List|
| ----------------- |:--------------- |:--------------- |:--------------- |:--------------- |:--------------- |
| Set  | Hash Set||Tree Set|| Linked Hash Set|
| List |     |Array List||Linked List
| Deque|    |Array Deque||Linked List
| Map  | Hash Map  | |Tree Map||Linked Hash Map


#### Linked List

- Verkettete Liste, in der jedes Element seinen Nachfolger kennt

```java=1
LinkedList l = new LinkedList();
l.add(1); //Hinzufügen eines Elements
l.add(3);
System.out.println(l); //Ausprinten der gesamten Liste
System.out.println(l.indexOf(1)); //Printet 0
l.remove(1); //Löscht Element am Index 1 (also die 3)
```

#### Hash Map

- Collection, die es ermöglicht, `Key-Value`-Paare zu speichern
- Der `Key` ist eindeutig und bildet auf einen Value ab


```java=1
HashMap<String, String> hauptstaette = new HashMap<String, String>();

//Hinzufügen von Elementen
hauptstaette.put("Spanien", "Madrid");
hauptstaette.put("Deutschland", "Berlin");

//Lesen eines Werts
hauptstaette.get("Spanien");

//Löschen eines Elements
hauptstaette.remove("Spanien");

//Iteration durch alle Keys und Values
for (String i : hauptstaette.keySet()) {
  System.out.println("key: " + i + " value: " + hauptstaette.get(i));
}
```


### Generics

- Möglichkeit den Typen einer Klasse offen zu lassen oder beim Erstellen einer Instanz einer Collection anzugeben

#### Benutzung einer generischen Klasse

```java=1
List<Number> list = new ArrayList<Number>(); //Liste in der Zahlen gespeichert werden
list.add(new Integer(1)); 
list.add(new Double(2.0);          
```


#### Schreiben einer generischen Klasse

- `T` gibt an, dass der Typ noch festgelegt werden kann und ist der Platzhalter für den Typen (bei mehreren generischen Parametern `U`, `V`, ...)
- bei der Verwendung der Klasse wird dann jedes T zur selben Klasse 

```java=1
public class MyValues<T>{
    private T myFirstValue;
    private T mySecondValue; 
    public MyValues(T t1, T t2){
        this.myFirstValue = t1;
        this.mySecondValue = t2;
    }
     public T getFirstValue(){
        return this.myFirstValue;
     } 
}
```

- Instanziierung dieser Klasse mit Integer:
```java=1
MyValues<Integer> a = new MyValues<Integer>(Integer.valueOf(1), Integer.valueOf(12));
System.out.println(a.getFirstValue()); //printet 1
```

#### Einschränkung der Typparameter

- Obergrenze für Typen, die in T drinnen stecken dürfen: ` MyClass<T extends SomeClass>`
- SomeClass darf als T verwendet werden, sowie alles Unterklassen

### Checkfragen

- [ ] Ist lineare oder binäre Suche normalerweise schneller?
- [ ] Nach welchem Prinzip arbeitet binäre Suche?
- [ ] Was gibt die Laufzeit an? Was sind bekannte Laufzeit-Klassen?
- [ ] Welche Laufzeiten haben die vorgestellten Sortieralgorithmen?
- [ ] Weche Datenstrukuren gibt es?
- [ ] Welche Datenstrukturen eignen sich für was?
- [ ] Wie funktieren Bäume?
- [ ] Wie viele Kinder können Knoten von Bäumen haben?
- [ ] Was sind Collections?
- [ ] Was sind Generics?
- [ ] Wie arbeiten Collections und Generics zusammen?
- [ ] Wie definiert man eine generische Klasse?
- [ ] Wie kann man die Objekte, die in generischen Klassen gespeichert werden einschränken?

## 4 - Advanced Concepts

### Exceptions

#### Fangen von Exceptions

- Fehler lassen sich in `try`-`catch`-Blöcken abfangen und verarbeiten
- Code, der einen Fehler auslösen könnte in `try`
- In `catch` wird angegeben, welche Art von Fehler abgefangen werden soll, z.B `ArithmeticException` (oder einfach Elternklasse `Exception`)
- Im `catch`-Block kann etwas mit dem Fehler gemacht werden (muss aber nicht)
- Der `finally`-Block ist optional, wird aber unabhänig davon ausgefürt, ob es einen Fehler gab

```java=1
try{
     //Code, der Exception auslösen könnte
} catch(Exception e){
    //Was soll passieren, wenn Fehler gefangen wurde?
    e.printStackTrace(); // Printet Fehler
    e.getMessage(); //Menschenlesbare Fehlerbeschreibung
}finally { 
     //Was soll auf jeden Fall ausgeführt werden
}
```
- In einem catch-Block können mehrere Exceptions abgefangen werden 

``` java=3
} catch(ClassNotFoundException | NullPointerException e){
```

#### Arten von Exceptions

- Checked Exceptions: man wird vom Compiler dazu gezwungen einen möglichen Fehler mit try-catch abzufangen (z.B. `InterruptedException`)
- Unchecked Exceptions: ein try-catch-Block ist optional. Alle Runtime-Exceptions sind unchecked (z.B. `ArithmeticException`, `NullPointerException`, `ArrayIndexOutOfBoundsException`)

#### Throws

- Schlüsselwort `throws` ermöglicht es, Exception an Methode weiterzugeben, die die Methode, in der der Fehler aufgetreten ist, aufgerufen hat
- dort muss Fehler dann entweder gecatcht werden oder weitergeworfen werden

```java =1
public class ExceptionThrowing { 

    public static void main(String[] args) {  
        
        try{
            throwException();
        }catch(Exception e){
            e.printStackTrace();
        }
        
    }
    
    //Methode reicht Fehler weiter
    public static void throwException() throws Exception {
        int i = 0;
        int k = 5/i;
    } 
}
```

#### Werfen von eigenen Exceptions

- Man kann auch eigene Exception-Klassen erstellen und Objekte dieser werfen

```java=1
//Eigene Exception-Klasse
class CustomException extends Exception{
    
  public CustomException(String nachricht){
    super(nachricht);
  }
}
```

```java=1
//Klasse zum Werfen der CustomException
class Modulo2Checker{
    
  public String checkModulo2(int i) throws CustomException{
      
    if (i % 2 != 0){
      throw new CustomException("Kein Modulo 2!");
    }
    return("Modulo 2");
  }
}
```

### Nebenläufigkeit

- Nebenläufigkeit ist die parallele Ausführung eines Programms
- Ein `Prozess` ist eine Ausführung eines Programms und kann aus mehreren `Threads` bestehen
- Der `Scheduler` regelt, welcher Thread wann Prozessorzeit zugewieses bekommt
    - Die Strategien zur Zuweisung von Rechenzeit nennt man `Scheduling-Strategien`

#### Erstellung von Threads

- Bei der Erstellung von Threads hat man zwei Möglichkeiten:

1. Erben von der Klasse `Thread` und Implementierung der `run()`-Methode

```java=1
class FirstThread extends Thread{
    
    //run-Methode wird beim Start des Threads ausgeführt
    public void run(){
        for(int i=0; i<10; i++){
            System.out.println(i);
        }
    }
    
}
```
```java=1
//Starten des Threads mit .start()
new FirstThread().start();
```

2. Implementation des Interface `Runnable` und Implementierung der `run()`-Methode

```java=1
class FirstRunnable implements Runnable{
    
    //run-Methode wird beim Start des Threads ausgeführt
    public void run(){
        for(int i=0; i<10; i++){
            System.out.println(i);
        }
    }
    
}
```
```java=1
//Starten des Threads mit .start()
new Thread(new FirstRunnable()).start();
```

- Die `run()`-Methode agiert wie eine `main()`-Methode, nur für Threads, gibt also an, was beim Start eines Threads passieren soll
- Vorteil am Interface: die Klasse kann noch von einer weiteren Klasse erben

#### Thread-Zustände

![](https://i.imgur.com/8SvLI7s.png)

- `New`: nachdem Thread erstellt wurde, aber vor dem Starten
- `Runnable`: Thread wird entweder gerade ausgeführt (`Running`) oder wartet darauf vom Scheduler Prozessorzeit zugewiesen zu bekommen (`Ready`)
    - Scheduler lässt ständig zwischen beiden Zuständen wechseln
    - `yield()` Methode kann aufgerufen werden, um absichtlich von `Running` zu `Ready` zu wechseln, wenn der Thread zum Beispiel andere Threads vorlassen soll
- `Timed Waiting`: Zustand, in dem Thread für eine betimmte Zeit stillgelegt ist
    - `sleep(long)`legt ihn für bestimmte Zeit schlafen
    - `wait(long)`lässt ihn für bestimmte Zeit auf Ressource warten
    - `join(long)` wartet für bestimmte Zeit, ob ein anderer Thread seine Berechnung abgeschlossen hat
- `Waiting`: Zustand, in dem Thread für eine unbetimmte Zeit stillgelegt ist
    - `wait()`lässt ihn für unbestimmte Zeit auf Ressource warten
    - `join()` wartet für unbestimmte Zeit, ob ein anderer Thread seine Berechnung abgeschlossen hat
- `Blocked`: Thread wartet darauf, auf eine Ressource zugreifen zu können
- `Terminated`: Thread ist beendet

#### Interruptions (Unterbrechungen)

- beim Aufruf von `Thread.sleep()` muss man eine InterruptedException abfangen (`try-catch`), die bestimmt, was passiert, wenn ein Thread während seines Schlafs unterbrochen wird
- Thread haben eine `isInterrupted()`-Methode, die überprüft, ob der Thread unterbrochen wurde
- Flag kann mit der `interrupt()`-Methode gesetzt werden

```java=1
public void run(){
      while(!isInterrupted()){
            //...
      }
} 
```

#### Blockieren (synchronized)

- Schlüsselwort `synchronized` stellt sicher, dass nur ein Thread einen bestimmten Bereich betreten darf
- es ist möglich entweder ganze Methoden oder bestimmte Codezeilen zu synchronisieren
- wenn gerade ein anderer Thread auf die gewünschte Ressource zugreift, befindet sich der Thread im Zustand `Blocked`
- Synchronisierung einer Methode (nur ein Thread darf Methode gleichzeitig ausführen):

```java=1
synchronized void foo(){ 
    //do something
}
```
- Synchronisation von mehreren Codezeilen (nur ein Thread darf Code gleichzeitig ausführen):
```java=1
void foo(){ 
    synchronized(this){
        //do something
    }
}
``` 
- Synchronized bei statischen Methoden:

```java=1
static synchronized void foo(){ 
    //do something
}
```
```java=1
static void foo(){ 
    synchronized(Classname.class){
        //do something
    }
}
``` 

- außerdem möglich `synchronized`auf Objekten aufzurufen (nur ein Thread darf gleichzeitig auf Objekt zugreifen):

```java=1
Object o = new Object();
void foo(){ 
    synchronized(o){
        //do something
    }
}
``` 

#### Producer-Consumer-Problem

![](https://i.imgur.com/UI303Rs.png)

- wartende Threads befinden sich im Zustand `Waiting` oder `Timed Waiting`, bis sie benachrichtigt werden bzw. die Zeit abgelaufen ist
- wichtige Methoden im Kontext von Producer-Consumer:
    - `wait()`: Warten auf Ressource 
    - `notify()`: Benachrichtigen eines Threads, der auf Ressource wartet
    - `notifyAll()`:Benachrichtigen aller Threads, die auf Ressource warten

### Streams

- Datenstrom von Ressource zum Programm oder vom Programm zur Ressource
- Ein Stream ist eine Sequenz von Daten
- Arten: `Byte-Stream` (Subklassen von `InputStream` oder `OutputStream`) und `Character-Stream` (Subklassen von `Reader` oder `Writer`)
- Beispiel für Byte-Stream:

```java=1
FileInputStream in = null; 
FileOutputStream out = null; 
try {
    in = new FileInputStream("myfile.dat");
    out = new FileOutputStream("myotherfile.dat"); 
    int c;
    //Kopieren und Schreiben der Daten
    while ((c = in.read()) != -1) out.write(c);
} catch (IOException e) {    
    e.printStackTrace();
} finally {
    //Beenden der Streams
    if (in != null) in.close(); 
    if (out != null) out.close();
}
```
- Für einen Character-Stream (Datei ist `.txt`) muss `FileInputStream` zu`FileReader` und`FileOutputStream` zu `FileWriter` werden

#### Buffer

- Effizientere Variante: Benutzen von Buffern. Dabei wird nicht jedes Zeichen einzeln geschrieben und gelesen, sondern mehrere Zeichen zusammengefasst
- Buffer werden geleert, wenn die `flush()`-Methode aufgerufen wird, der Stream geschlossen wird oder der Buffer voll ist
- Beispiel Buffer, der `txt`-Datei ausprintet:

```java=1
BufferedReader br = new BufferedReader(new FileReader("src.txt")); 
String line = null;
while((line = br.readLine())!=null){
    System.out.println(line);
}
br.close();
```

- Buffer, der Datei kopiert:

```java=1
BufferedReader br = new BufferedReader(new FileReader("src.txt")); 
PrintWriter out = new PrintWriter(new FileWriter("copy.txt")); 
String line = null;
while((line = br.readLine())!=null){
    out.println(line);
}
br.close();
out.close();
```

#### Beenden von Streams

- Variante ohne Auto-Closable

```java=1
FileOutputStream out = null; 
try {
    out = new FileOutputStream("myfile.dat");
    out.write(123);
} catch (IOException e) {
    e.printStackTrace(); } 
finally {
    try{
        if (out != null) out.close();
    } catch (IOExeption ioe){ 
        /*do nothing*/
    }
}
```
- Konfortabler ist die Verwendung von `AutoClosable`

```java=1
try (FileOutputStream out = new FileOutputStream("myfile.dat");){         
    out.write(123);
} catch (IOException e) { 
    e.printStackTrace();
}

```
### Sockets

- Wichtig für die Kommunikation zwischen Clients und Servern
- Sind eine Art von Streams
- Ablauf:

![](https://i.imgur.com/fKqTg6t.png)

#### Server

- Server benutzen zur Kommunikation `ServerSockets`
- Ein Server, der einfach nur zurückschickt, was ihm gesendet wurde (Echo-Server):


```java=1
ServerSocket server = new ServerSocket(8082); 
Socket client = server.accept();
int i;
while ((i = client.getInputStream().read()) != -1) {
    client.getOutputStream().write(i);
}
server.close();
```

#### Clients

- Clients benutzen zur Kommunikation `Sockets`
- Ein Client, der einfach nur zurückschickt, was ihm gesendet wurde (Echo-Client):


```java=1

Socket s = new Socket("127.0.0.1", 8082); 
s.getOutputStream().write(42); 
s.getOutputStream().write(123); 
System.out.println(s.getInputStream().read()); 
s.close();
```



### Checkfragen

- [ ] Welche Arten von Exceptions gibt es?
- [ ] Wann zwingt einen der Compiler try-catch zu verwenden?
- [ ] In welchen Fällen ist ein `finally`-Block sinnvoll?
- [ ] Wie kann man verhindern, dass Exceptions auftreten (z.B. `NullPointerException`)
- [ ] Ist es sinnvoll um seinen gesamten Code ein `try` rumzumachen?
- [ ] Wie kann man sich die Nachricht einer Exception ausgeben lassen?
- [ ] Wieviele `catch`-Blöcke kann man maximal verwenden?
- [ ] Was macht `throws`?
- [ ] Was sind die Möglichkeiten Threads zu starten? Welche Vorteile haben sie?
- [ ] Was ist der Unterschied zwischen `.start()` und `.run()`?
- [ ] Welche Thread-Zustände gibt es?
- [ ] Was macht ein Scheduler?
- [ ] Was muss man beachten, wenn man einen Thread schlafen legt?
- [ ] Was macht die `.join(long)`-Methode?
- [ ] In welchen Formen kann `synchronized` auftreten? Was macht es?
- [ ] Wann tritt das Producer-Consumer-Problem auf?
- [ ] Was ist der Unterschied zwischen `notify` und `notifyAll`?
- [ ] Welche Stream-Arten gibt es?
- [ ] Was ist ein Buffer und wie verwendet man ihn?
- [ ] Wie schließt man am besten einen Stream?
- [ ] Was ist der Unterschied zwischen Client und Server?
- [ ] Was sind Ports?




# Prog1

[ToC]

## 1 - Imperative Programmierung

### Allgemeiner Aufbau von Klassen

- Code ist in Klasse enthalten
- Eigene Datei für jede Klasse
- Code, der beim Start ausgeführt werden soll in `main`-Methode

```java=1
public class HelloWorld{
    public static void main(String[] args){
        //some code
    }
}
```
### Kommentare

```java=1
//Kommentar über eine Zeile

/*Kommentar 
 * über 
 * mehere
 * Zeilen 
 * */
```
- Javadoc-Kommentare zum Kennzeichnen und Beschreiben von Methoden

```java=1
/* Gibt die Summe von zwei Werten zurück
 * 
 * @param a der erste Summand
 * @param b der zweite Summand 
 * @return die Summe von a und b
 * */
public static int sum(int a, int b){
    return a+b;
}
```

### Variablen

- Variablen sind Container zum Speichern von Werten
- Verschiedene primitive Typen:
    - `boolean`: Wahrheitswerte (true und false)
    - `char`: Zeichen (z.B. 'g')
    - `byte`, `short`, `int`, `long`: Ganzzahlen (z.B. 24)
    - `float`, `double`: Kommazahlen (z.B. 2,5)
- Objektdatentyp:
    - `String`: Zeichenketten (z.B. "HelloWorld")
- Zuweisung von Werten zu Variablen:

```java=1
int i = 3;
long l = 4L;
char c = 'c';
float f = 23.4;

String s = "Hello World";
```
### Umwandlung von Variablen
```java=1
int i = (int) 5L; //Umwandlung von long in int
```
### Operatoren
#### Operationen mit einem Operator
| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| +x       | kein Effekt   |
| -x | negativer Wert    |
| x++         | Post-increment     |
| x- -        | Post-decrement   | 
| ++x   | Pre-increment |
| - -x|Pre-decrement|

- Post heißt, dass der Wert nach der Operation verändert wird, bei pre hingegen davor
```java=1
x=5;
x--; //x hat jetzt den Wert 4
```
#### Operationen mit zwei Operatoren

| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| a+b       | Addition   |
| a-b | Subtraktion    |
| a*b         | Multiplikation    |
| a/b        | Division   | 
| a%b  | Modulo |
- Modulo berechnet den Rest der Division
```java=1
int x = 10%3; //x hat jetzt den Wert 1
```
| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| a<b       | Kleiner als   |
| a<=b | Kleiner gleich    |
| a>b         | Größer als    |
| a>=b        | Größer gleich  | 
| a==b  | Gleich |
| a!= b | Ungleich |

```java=1
int i1 = 10;
int i2 = 11;

boolean a = i1==i2; //a ist false
boolean b = i1>=i2; //b ist flase
boolean c = i1!=i2; //c ist true
```

#### Operatoren für boolean-Operationen

| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| a&b       | Und   |
| a\|b | Oder    |
| a^b         |Entweder oder    |
| !a    | Nicht  | 
- `a&&b` bricht die Verarbeitung der Bedingung ab, wenn sie nicht mehr zu erfüllen ist, also wenn das erste Element falsch ist. `a&b` evaluiert a und b
- `a||b` bricht die Verarbeitung der Bedingung ab, wenn sie bereits durch a erfüllt ist, also wenn a true ist. `a|b` evaluiert a und b

### Printen von Werten

- `System.out.println` printet eine neue Zeile. `System.out.print` printet, ohne eine neue Zeile zu erstellen
- Konkatenation (Aneinanderhängung) von Strings mit `+`. Dabei werden Zahlen implizit in Strings umgewandelt

```java=1
System.out.println("Hello"); //printet "Hello"
System.out.println("Hello" + "World"); //printet "HelloWorld"
System.out.println("Hello" + 3); //printet "Hello3"
```
### Mathe-Funktionen

| Operator          | Bedeutung               |
| ----------------- |:----------------------- |
| Math.sqrt       | Wurzel   |
| Math.pow | Potenz   |
| Math.abs         | Betrag    |
| Math.random        | Zufällige Zahl zwischen 0 und 1  | 

### Bedingungen

- Bedingungen bestehen aus `if`, beliebig vielen `if else` und maximal einem `else`
- Inhalt der einzelenen Bedingungsblöcke wird eingerückt
```java=1
int i = 4;

if(i >= 3){
    i++;
}else if (i != 34 && i > 20){
    i--;
}else{
    System.out.println(i);
}
```
- Switch Case ist eine  Möglichkeit verschiedene Werte einer Variable abzugleichen
- `default`ist optional
- `break`, damit der Switch Case verlassen wird, wenn Bedingung erfüllt

```java=1
int i = 1;

switch(i){
    case 0: i++;
            break;
    case 1: i--;
            break;
    case 2: i+=4:
            break;
    default: i-=23;
}
```

### Schleifen

- Mehrmalige Ausführung von Code
- 3 verschiedene Arten von Schleifen: `for`, `while` und `do while`
- `for`-Schleife nach der Logik (i startet bei dem Wert 0; die Schleife läuft, solange i<10; i erhöht sich in jeder Iteration um 1):
```java=1
for(int i=0; i<10; i++){
    System.out.println(i);
}
//Output: 0,1,2,3,4,5,6,7,8,9
```
- `while`-Schleife, die zwei Mal ausgeführt wird:
```java=1
int i = 0;
while(i<2){
    i++;
}
```
- `do while`-Schleife, die zwei Mal ausgeführt wird:
```java=1
int i = 0;
do{
    i++;
}while(i<2);
```
#### Break und Continue

- `continue` beendet die Ausführung der aktuellen Iteration einer Schleife
- `break` beendet die Ausführung die gesamte Schleife und springt direkt zum Code darunter

```java=1
for (int i = 0; i < 3; i++){
    if (i==1){
        continue;
    }
    System.out.println(i);
} //Output: 0,2
```
```java=1
for (int i = 0; i < 3; i++){
    System.out.println(i);
    if (i==1){
        break;
    }
} //Output: 0,1
```

### Arrays

-  Datenstuktur zur Speicherung von mehreren Wertern der gleichen Art
-  Zugriff mit Hilfe von Index (Zählung beginnt bei 0)
-  Länge ist fix, Elemente innerhalb des Arrays können verändert werden
-  Länge eines Arrays mit `length`
-  Default Wert der Arrayeinträge ist `null`
-  Erstellung eines int-Arrays der Länge 3:

```java=1
int [] arr = new int [3];
arr[0] = 1;
arr[1] = 2;
arr[2] = 3;

System.out.println(arr.length); //Printet 3
```
- Veränderung von Werten und printen eines Wertes:
```java=1
arr[1] = 10;
System.out.println(arr[1]); //Printet 10
```

#### Iteration durch Array

```java=1
int [] arr = new int [2];
arr[0] = 1;
arr[1] = 2;

for (int i = 0; i < arr.length; i++){
    System.out.println(arr[i]);
}
```
- alternativ gibt es eine vereinfachte Variante der `for`-Schleife, die `for each`-Schleife
- im folgenden Beispiel nimmt `i` bei jedem Durchlauf den nächsten Wert im Array an

```java=1
for (int i : arr){
    System.out.println(i);
}
```

#### Hinzufügen eines Elements

- Komplettes ursprüngliches Array muss kopiert werden und in einem neuen Objekt um einen neuen Eintrag ergänzt werden
- Array der Länge 2 soll um ein Element erweitert werden:
```java=1
int [] arr1 = new int [2];
arr1[0] = 1;
arr1[1] = 2;

//Kopie:
int [] arr2 = new int [arr1.length + 1];
for (int i = 0; i < arr1.length; i++){
    arr2[i] = arr1[i];
}
//Neues Element
arr2[arr1.length] = 3
```

#### Mehrdimensionale Arrays

- Beliebig viele Dimensionen möglich
- Erstellung eines Arrays der Dimension 2x3 und Zuordnung eines Wertes:

```java=1
int [][] multiDimArr = new int [2][3];
multiDimArr[0][1] = 32;
```

### Klassenmethoden

- Möglichkeit Code außerhalb der Main-Methode zu schreiben
- Aufruf aus der main oder aus anderen Methoden
- Syntax: Sichtbarkeit(z.B. public oder private), static, Rückgabetyp (z.B. void wenn nichts zurückgegeben werden soll, String, int, ...), Methodenname, Parameter
- Einfache Methode:

```java=1
public static void tuEtwas(int a, String s){
    System.out.println(s + a);
}
```
- Ganze Klasse mit Aufruf dieser Methode:

```java=1
public class MeinProgramm{
    
    public static void main(String args[]){
        int x1 = 4;
        String s = "Die Variable hat den Wert: ";
        
        tuEtwas(x1, s);
    }
    
    public static void tuEtwas(int a, String s){
        System.out.println(s + a);
    }
    
}
```
- Achtung: bei Parametern, die Objektdatentypen sind, wird der Methode eine Referenz übergeben und nicht der Wert

#### Methoden mit Rückgabe

- mit `return` kann Methode Werte zurückgeben
```java=1
public static int addiereZahlen(int a, int b){
    int ergebnis = a+b;
    return ergebnis;
}
```

#### Methodenüberladung

- Methodenüberladung heißt mehrere Methoden in einer Klasse mit dem gleichen Namen aber underschiedlichen Parametern zu haben
- Compiler ruft dann Methode auf, die am spezifischsten ist

1. Wähle alle potentiellen Methoden aus
2. Eine Methode m1 ist spezifischer ist als eine andere Methode m2, wenn alle Parameter von m1 identisch sind oder implizit zu den Parametern von m2 gecastet werden können
3. Gibt es eine spezifischste Methode, so wird diese aufgerufen. Wenn mehrere Methoden gleichwertig sind, dann gibt es einen Fehler



### Rekursion

- Alternative zu Schleifen, bei der sich eine Methode immer wieder selbst aufruft
- Besteht aus einem Rekursionsanker und einem Rekursionsrumpf

```java=1
public static long fakultaet(long z){
    if (z==1)
        return z;
    else
        return z*fakultaet(z-1);
}
```


### Checkfragen
- [ ] Um ein einziges Print-Statement zu schreiben, was muss man dafür in einer Java-Datei außer dem `System.out.println()` schreiben?
- [ ] Was macht die `main`-Methode besonders?
- [ ] Was ist ein primitiver Datentyp? Welcher Datentyp ist nicht primitiv?
- [ ] Was ist der Unterschied zwischen `++a` und`a++`?
- [ ] Braucht man zwingend ein `else` bei Bedingungen?
- [ ] Was passiert, wenn man das `break` im Switch Case weglässt?
- [ ] Wofür wird welche Schleife verwendet? Wie viele gibt es?
- [ ] Mit welchem Keyword bricht man die Ausführung einer ganzen Schleife ab?
- [ ] Wie würde man ein Array um ein Element verkürzen?
- [ ] Wie würde man durch ein mehrdimensionales Array iterieren?
- [ ] Wie kennzeichnet man eine Methode, die nichts zurückgibt?
- [ ] Was passiert bei Methodenüberladung, wenn keine spezifischste Methode existiert?
- [ ] Kann man jede Schleife auch rekursiv lösen?



## 2 - Objektorientierte Programmierung

### Klassen und Instanzen

- Klasse: Schablone, die bestimmte Eigenschaften beschreibt


```java=1
public class Apfel{
    String farbe;
    double masse;
    double volumen;
    int pflückjahr;
}
```

- Objekt: Instanz einer solchen Schablone mit verschiedenen Werten für die Eigenschaften
- Erstellen eines neuen Objekts mit Schlüsselwort `new`
```java=1
Apfel a = new Apfel();
a.farbe = "grün";
a.pflückjahr = 2021;
```

### Klassen- und Instanzvariablen

- Instanzvariablen variieren von Instanz zu Instanz (z.B. Farbe oder Masse eines Apfels)
- Klassenvariablen sind für alle Instanzen der Klasse gleich. Zur Kennzeichnung nutzt man `static`

```java=1
public class Apfel{
    //Instanzvariablen
    String farbe;
    double masse;
    double umfang;
    //Klassenvariable
    static double pi = 3.14159;
}
```
- typischer Usecase von Klassenvariablen: ID-Generierung:
```java=1
public class Apfel{
    static long nextID = 0;
    long apfelId = nextID++;
}
```
- außerdem oft genutzt für Konstanten (z.B. Pi) und dann gekennzeichnet mit `final`

### Klassen- und Instanzmethoden

- ähnlich wie bei Variablen: Klassenmethoden sind `static` und unabhänig von Instanzen
- Instanzmethoden sind abhänig von spezifischen Objekten
- `main`-Methode ist Klassenmethode
- Beispiel für Instanzmethode:
```java=1
public class Apfel{
    boolen enthältWurm = false;
    
    public void lassWurmEinziehen(){
        this.enthältWurm = true;
    }
}
```
- Aufruf der Instanzmethode

```java=1
Apfel a = new Apfel();
System.out.println(a.enthältWurm); //printet false
a.lassWurmEinziehen();
System.out.println(a.enthältWurm); //printet true
```
- Aufruf einer Klassenmethode mit dem Namen der Klasse 

### Zugangsmodifier

- Können benutzt werden, um Methoden oder Attribute (Variablen) sichtbar zu machen oder von außen zu verstecken

```java=1
public class Apfel{
    public boolean farbe;
    protected double volumen;
    double masse; //entspricht "package"
    private String ortDerPflückung;
}
```
- `public` kann von überall gesehen werden
- `protected` kann von allen Kindklassen gesehen werden
- `package` kann von alles Klassen desselben Packages gesehen werden
- `private` kann nur innerhalb derselben Klasse gesehen werden


### Getter und Setter

- `Getter` sind Instanzmethoden, die keine Parameter haben und Werte von Variablen zurückgeben
- `Setter` sind Instanzmethoden, die einen Wert als Parameter haben und ihn einer Variablen zuweisen

```java=1
public class Apfel{
    private boolean istVerfault = false;
    
    //Getter
    public boolean getVerfault(){
        return this.istVerfault;
    }
    
    //Setter
    public void setVerfault(boolean v){
        this.istVerfault = v;
    }
}
```

### Konstruktoren

- Regeln, was passiert wenn ein neues Objekt einer Klasse erstellt
- sieht ähnlich aus wie eine Methode, hat aber keinen Rückgabewert und heißt genau so wie die Klasse

```java=1
public class Apfel{
    
    double dichte;
    
    public Apfel(double dichte){
        this.dichte = dichte;
        System.out.println("Ein neuer Apfel der Dichte " + dichte + " wurde soeben erstellt.")
    }
    
}
```

- Aufruf des Konstruktors:

```java=1
Apfel a = new Apfel(34.3);
```


### Klassen für Datenrepräsentation

#### String

- String ist kein primitiver Datentyp, sondern ein Objektdatenryp
- basiert auf einem char-Array
- es existieren verschiedene Instanzmethoden auf Objekten vom Typ `String`

```java=1
String s = "Apfel";
String s2 = new String("Apfel"); //Alternativer Konstruktor
s.replaceAll("p", "q");
```

#### StringBuffer

- Alternative zu String, die nicht auf Arrays basiert
```java=1
StringBuffer sb = new StringBuffer("Apfel");
sb.reverse();
sb.append(" und Birne");
```

#### Wrapper-Klassen

- Objekte analog zu den primitiven Datentypen

| Primitiver Typ          | Wrapper-Klasse               |
| ----------------- |:----------------------- |
| int       | Integer   |
| double | Double    |
| long        |Long    |
| boolean    | Boolean  | 
| float | Float |
| short | Short |
| byte | Byte |
| char | Character |


```java=1
// Konventieren von String zu Datenklasse:
int i = Integer.parseInteger("5");

//Operationen mit primitiven und Objektdatentypen:
int i = new Integer("20") + 5
Integer i = 1 + 2
```

### Vererbung

- zur Darstellung von Beziehungen zwischen Klassen
- Eigenschaften und Methoden können an Kindklassen vererbt werden
- Methoden können in den Kindklassen spezifiziert werden
- Erben einer Klasse mit Schlüsselwort `extends`
- es kann nur von maximal einer Klasse geerbt werden

```java=1
public class Tier{
    double masse;
}

public class Krokodil extends Tier{
    String name;
}
```
- Erstellen eines Objekts vom Typ Krokodil:

```java=1
Krokodil kroko = new Krokodil();
kroko.name = "Kroko";
kroko.masse = 120.5;
```
- es ist möglich ein Objekt von einem Typen in einer Variablen des Elterntypen zu speichern:

```java=1
Tier t = kroko;
System.out.println(t.name); //Nicht möglich
System.out.println(t.masse); //Möglich
```

#### Methodenüberschreiben

- heißt, dass eine Kindklasse eine Methode einer Elternklasse spezifiziert

```java=1
public class Tier{
    double masse;
    void move(){
        System.out.println("Das Tier bewegt sich!");
    }
}

public class Krokodil extends Tier{
    String name;
    void move(){
        System.out.println("Das Krokodil krabbelt!");
    }
}
```
- Aufruf der Methoden:
```java=1
Krokodil kroko = new Krokodil();
Tier t = new Tier();
kroko.move(); //Aufruf der Methode von Krokodil
t.move(); //Aufruf der Methode von Tier
t = kroko;
t.move(); //Aufruf der Methode in Krokodil
```

### Klasse Object

- Alle Klassen erben von der Klasse `Object`, was die Wurzel von allen Klassen ist
- typischerweise überschrieben Klassen einige Methoden von `Object`
    - `equals()` zum Vergleich von zwei Objekten
    - `hashCode()` gibt eine Hash-Repräsentation der Klasse zurück
    - `toString()` gibt eine String-Repräsentation der Klasse zurück

### Super und this

#### Super und this im Konstruktor

- `super` und `this` dienen zum Zugriff auf Konstruktoren der Superklasse oder der eigenen Klasse
- `super` und `this` müssen die ersten Aufrufe im Konstruktor sein

```java=1
public class Tier{
    double masse;
    Tier(double masse){
        this.masse = masse;
    }
}

public class Krokodil extends tier{
    String name;
    String farbe;
    
    Krokodil(int masse, String name, String farbe){
        super(masse);
        this.name = name;
        this.farbe = farbe;
    }
    
    Krokodil(int masse, String name){
        this(masse, name, "grün"); //leitet an anderen Konstruktor weiter
    }
}
```

#### Super zum Aufruf einer Supermethode

```java=1
public class Tier{
    double masse;
    
    public String toString(){
        return "Ein Tier der Masse " + this.masse + "kg";
    }
}

public class Krokodil extends Tier{
    String name;
    String farbe;
    
    public String toString(){
        return super.toString() + " und vom Typ Krokodil hat den Namen " + this.name;
    }
}
```

### Objekterzeugung

- während der Objekterzeugung werden verschiedene Schritte durchlaufen

1. Klassenvaiablen von Eltern nach Kind (`static`)
2. Instanzen (von Eltern nach Kind)
    2.1 Instanzvariablen
    2.2 Konstruktoren

### Abstrakte Klassen und Methoden

- Klassen, von denen man keine Instanzen erstellt kann
- ein Objekt vom Typen einer abstrakten Klasse würde kein Sinn machen
- Beispiel: `Tier t = new Tier()` würde keinen Sinn machen

```java=1
public abstract class Tier{...}

public class Krokodil extends Tier{...}
```

- abstrakte Methoden sind Methoden, die nicht implementiert sind und in den erbenden Klassen überschrieben werden müssen
- sobald eine Klasse eine abstrakte Methode hat, muss auch ihre Signatur `abstract` sein

```java=1
public abstract class Tier{
    abstract String machGeräusch();
}


public class Krokodil extends Tier{
    
    @Override
    String machGeräusch(){
        return("Rawww"); //Was für ein Geräusch macht ein Krokodil?
    };
}
```

### Interfaces

- Interfaces sind eine Alternative zu abstrakten Klassen, die meist für bestimmte Eigenschaften stehen
- Interfaces ermöglichen Mehrfachvererbung
- Klassen können nur von einer Klasse erben, aber beliebig viele Interfaces implementieren
- Methoden aus dem Interface werden überschrieben

```java=1
public interface KannSchwimmen{
    String machSchwimmGeräusch();
}

public abstract class Tier{
    abstract String machGeräusch();
}

public class Krokodil extends Tier implements KannSchwimmen{
    
    @Override
    String machGeräusch(){
        return("Rawww");
    }
    
    String machSchwimmGeräusch(){
        return("Platsch");
    }
}
```

### Enums

- Typen, die nur eine bestimmte Menge an Werten annehmen können
- Zugriff mit `nameDesEnums.wertDesEnums`
- gut kombinierbar mit switch case

```java=1
enum Jahreszeiten{
    SOMMER, HERBST, WINTER, FRÜHLING;
}

public class Jahreszeitenwechsel{
    
    Jahreszeiten aktuell = Jahreszeiten.HERBST;
    
    public void wechseleJahreszeit(){
        switch(aktuell){
            case (SOMMER): aktuell = Jahreszeiten.HERBST; break;
            case (HERBST): aktuell = Jahreszeiten.WINTER; break;
            case (WINTER): aktuell = Jahreszeiten.FRÜHLING; break;
            case (FRÜHLING): aktuell = Jahreszeiten.SOMMER; break;
        }
    }
    
}
```

### Checkfragen
- [x] Was ist der Unterschied zwischen Klassenmethoden und Instanzmethoden?
- [x] Wie generiert man Ids?
- [x] Was muss gemacht werden, bevor man eine Instanzmethode aufruft?
- [x] Wie kann man einen anderen Konstruktor derselben Klasse aufrufen und wie einen der Superklasse?
- [x] Welches Kennzeichnungswort benutzt man für das Kennzeichenen von überschiebenen Methoden?
- [x] Was genau ist die Klasse `Object`?
- [x] Was bedeutet hashen? Wie wird dies im Zusammenhang mit Objekten verwendet?
- [x] Was genau passiert bei der Objekterstellung?
- [x] Wieviele Klassen können von einer anderen Klasse erben?
- [x] Können abstrakte Klassen auch nicht abstrakte Methoden besitzen?
- [x] In welchen Fällen macht es Sinn ein Interface statt einer abstrakten Klasse zu benutzen?
- [x] Ist es möglich, Methoden in Interfaces schon zu spezifizieren?
- [x] Wie kann man eine Variable vom Typen eines Enums erstellen und initialisieren?


## 3 - Algorithmen und Datenstrukturen

### Suchalgorithmen

#### Lineare Suche

- intuitive Suche von Elementen: Iteration durch gesamte Datenstruktur und Abbruch, wenn Element gefunden wurde



```java=1
int [] array = {1,2,3,4,5};
int suchwert = 4;
int ergebnis = -1;
for(int i=0;i<array.length;i++){
    if(array[i]==suchwert){
        ergebnis = i; //Ergebnis hat dann Wert vom Index des Suchwerts
        break;
    }
}
```
- Komplexität: O(n)

#### Binäre Suche

- nach dem Prinzip "Teile und Herrsche": 
    1. Teile die Liste durch 2
    2. Ist der gesuchte Wert kleiner oder größer als mittlerer Wert der Liste?
    3. Wenn größer -> nächste Teilliste ist alles ab der Mitte, beginne von vorne
    4. Wenn kleiner -> nächste Teilliste ist alles vor der Mitte, beginne von vorne
    5. Wenn gleich -> gefunden
- Komplexität: O(log(n))

``` java=1
// gibt den Index von x zurück, wenn x in arr, ansonsten -1
int binarySearch(int [] arr, int l, int r, int x){
	if (r >= l) {
		int mid = l + (r - l) / 2;

		if (arr[mid] == x) //gefunden
			return mid; 

		if (arr[mid] > x) //x ist kleiner als die Mitte
			return binarySearch(arr, l, mid - 1, x);
        
		return binarySearch(arr, mid + 1, r, x); // x ist größer als Mitte
	}
    
	return -1;
}

public static void main(String [] args){
	int [] arr = { 2, 3, 4, 10, 40 };
	int x = 10;
	int n = arr.length;
	int result = binarySearch(arr, 0, n - 1, x);
	(result == -1)
		? System.out.println("Element is not present in array")
		: System.out.println("Element is present at index " + result);
	return 0;
}
//Quelle: https://www.geeksforgeeks.org/binary-search/
```


### Sortieralgorithmen

#### Insertion Sort

- wie das Einsortieren von Karten
    1. Nimm ein Element nach dem anderen zum Einsortieren 
    2. Wenn noch kein Element vorhanden, dann ist das Element das Vergleichselement, ansonsten ist das kleinste Element das Vergleichselement
    4. Wenn das Element größer ist als das Vergleichselement, vergleiche mit dem nächsten (wiederhole dies, bis 3 erfüllt)
    5. Wenn das Element kleiner ist als das Vergleichselement, sortiere es davor ein

``` java=1
public static void insertionSort(int array[]) {  
    int n = array.length;  
    for (int j = 1; j < n; j++) {  
        int key = array[j];  
        int i = j-1;  
        while ( (i > -1) && ( array [i] > key ) ) {  
            array [i+1] = array [i];  
            i--;  
        }  
        array[i+1] = key;  
    }  
}  
//Quelle: https://www.javatpoint.com/insertion-sort-in-java
```

#### Selection Sort

- in jedem Druchlauf wird das kleinste Element von den unsortierten Elementen ausgewählt und mit dem ersten Element der unsortierten Elemente getauscht
```java=1
public static int[] selectionsort(int[] array) {
    for (int i = 0; i < array.length - 1; i++) {
        for (int j = i + 1; j < array.length; j++) {
            if (array[i] > array[j]) {
                //Tausch
                int temp = array[i];
                array[i] = array[j];
                array[j] = temp;
            }
        }
    }

    return sortieren;
}
// Quelle: https://www.java-programmieren.com/selectionsort-java.php
```

#### Weitere Sortieralgorithmen

- Bubble Sort: iteriert über Elemente, bis sie sortiert sind und vertauscht in jeder Iteration die Elemente, die in der falschen Reihenfolge sind
- Bubble Sort, Selection Sort und Insertion Sort sind langsame Sortieralgorithmen und werden deswegen in der (guten) Praxis nicht verwedet
- Schnellere Algorithmen: Quicksort, Heapsort, Mergesort (Komplexität O(n*log(n)))

### Datenstrukturen

#### Linked Lists

- Sequenz von Werten (ähnlich wie Arrays)
- Elemente verweisen jeweils auf Folgeelement (bei doppelt verlinkten Listen auch aufs Vorgängerelement)
- Einträge einer Liste bestehen nur aus Wert und der Referenz auf nächstes Objekt
```java=1
public class Listeneintrag{
    public Object value;
    public Listeneintrag next;
    
    public Listeneintrag(Object value, Listeneintrag next){
        this.value = value;
        this.next = next;
    }
}
```
- mögliche Methoden einer Liste:
```java=1
public class EinfachVerlinkteListe{
    public Listeneintrag head; //erstes Element
    
    public void append(Object value) {} //zum Anhängen
    public Object getValue (int position) {} //Wert an position bekommen
    public void deleteValue(Object value) {} //Wert von value löschen
    public void insertAtHead(Object value) {} //vorne value anfügen
    public void insertAfter(Object value, Object after) {} //Wert von value nach Wert von after einfügen
}
```
##### Hinzufügen von Elementen
```java=1
public void append(Object value){
    Listeneintrag element = head;
    if (element == null) {
        head = new Listeneintrag(value,null);
        return;
    }
    while (element.next != null) {
         element = element.next;
    }
    element.next = new Listeneintrag(value, null);
}
```
##### Löschen von Elementen
```java=1
public void deleteValue(int position){
    if (position < 0) {
        return;
    }
    Node element = head;
    for (int i = 0; i < position - 1; i++) {
        element = element.next;
    }
    if (element == 0) {
        head = element.next;
    } else {
        element.next = element.next.next;
    }
}
```
##### Einfügen am Kopf
```java=1
public void insertAtHead(Object value){
    if(head == null){
        head = new Listeneintrag(value, null);
        return;
    }
    head = new Listeneintrag(value, head);
}
```
#### Queues

- Nach dem Prinzip von Warteschlagen (First In First Out)
- Wie Listen, in denen man nur am Ende einfügen kann (Enqueue) und den Kopf entfernen kann (Dequeue)

#### Stacks

- Nach dem Prinzip von Stapeln (Last In First Out)
- Wie Listen, in denen man nur am Kopf einfügen kann (Push) und den Kopf entfernen kann (Pop)

#### Bäume

- Datenstruktur, die auf Knoten basiert
- Am Kopt ist `root`-Knoten, der keinen Elternknoten hat
- Jeder Knoten kann beliebig viele Kindknoten haben, hat aber genau einen Elternknoten (außer `root`)
- Bäume haben keine Zyklen
- Bei `Binärbäumen` haben Knoten maximal zwei Kindknoten
```java=1
public class Node{
    public Object value;
    public Node links;
    public Node rechts;
}
```
- Binärbäume können folgende Methoden haben:
```java=1
public class BinaryTree{
    
    private Node root; //Wurzel des Baums
    public void insert(int value) {} //Einfügen von value
    public Node findNode(Object o) {} //Finden von o
    public void toString() {} //String-Repräsentation des Baums
}
```

##### Einfügen von neuen Werten

1. Wenn der neue Wert kleiner ist als der des aktuellen Knotens, füge den neuen Wert im linken Subbaum ein. Wenn er größer ist, im rechten.
2. Wenn der ausgewählte Subbaum nicht existiert, füge den neuen Wert als direkten Kindknoten hinzu. Ansonsten beginne wieder bei 1. mit dem Subbaum.

##### Suchen von Elementen

Beginnend mit dem `root`-Knoten:
1. Wenn der aktuelle Knoten null ist, ist der Wert nicht im Baum enthalten
2. Wenn der aktuelle Knoten den Wert enthält, den wir suchen, dann gebe ihn zurück
3. Wenn der aktuelle Knoten einen Wert enthält, der größer ist als der, den wir suchen, wiederhole den Algorithmus für den linken Kindknoten.
4. Wenn der aktuelle Knoten einen Wert enthält, der kleiner ist als der, den wir suchen, wiederhole den Algorithmus für den rechten Kindknoten.

##### Tree traversal

- Verschiedene Möglichkeiten über einen Baum zu iterieren:
    - `Pre-Order`: für jeden Knoten wird erst der Knoten ausgegeben, dann der linke Subbaum und dann der rechte
    - `In-Order`: für jeden Knoten wird erst der linke Subbaum ausgegeben, dann der Knoten und dann der rechte Subbaum (Vorteil: Werte sind richtig sortiert)
    - `Post-Order`: für jeden Knoten wird erst der linke Subbaum ausgegeben, dann der rechte und zuletzt der Knoten
- Code für `in-Order`(Reihenfolge von 1., 2. und 3. müsste für die anderen nur vertauscht werden):

```java=1
private String inOrder(BinTreeNode current){ 
    String res = "";
    
    //1. Linker Teilbaum
    if (current.left != null) res += inOrder(current.left) + ",";
    
    //2. Knoten
    res += current.value;
    
    //3. Rechter Teilbaum
    if (current.right != null)res += "," + inOrder(current.right);
    
    return res;
}
```

### Collections

- Vorimplementierte Datenstrukturen (Listen, Bäume, Stacks, Queues, ... sind auch vorhanden)
- `Set` enthält keine Duplikate
- `Deque` "double-ended queue" kann als LIFO und FIFO-Datentruktur genutzt werden
- `Map`: Menge von Schlüssel-Wert Paaren. Der Schlüssel ist einzigartig und bildet auf einen beliebigen Wert ab
- Übersicht über Datentrstrukturen:

| Interface   | Hash Table |Resizable Array | Balanced Tree |Linked List | Hash Table + Linked List|
| ----------------- |:--------------- |:--------------- |:--------------- |:--------------- |:--------------- |
| Set  | Hash Set||Tree Set|| Linked Hash Set|
| List |     |Array List||Linked List
| Deque|    |Array Deque||Linked List
| Map  | Hash Map  | |Tree Map||Linked Hash Map


#### Linked List

- Verkettete Liste, in der jedes Element seinen Nachfolger kennt

```java=1
LinkedList l = new LinkedList();
l.add(1); //Hinzufügen eines Elements
l.add(3);
System.out.println(l); //Ausprinten der gesamten Liste
System.out.println(l.indexOf(1)); //Printet 0
l.remove(1); //Löscht Element am Index 1 (also die 3)
```

#### Hash Map

- Collection, die es ermöglicht, `Key-Value`-Paare zu speichern
- Der `Key` ist eindeutig und bildet auf einen Value ab


```java=1
HashMap<String, String> hauptstaette = new HashMap<String, String>();

//Hinzufügen von Elementen
hauptstaette.put("Spanien", "Madrid");
hauptstaette.put("Deutschland", "Berlin");

//Lesen eines Werts
hauptstaette.get("Spanien");

//Löschen eines Elements
hauptstaette.remove("Spanien");

//Iteration durch alle Keys und Values
for (String i : hauptstaette.keySet()) {
  System.out.println("key: " + i + " value: " + hauptstaette.get(i));
}
```


### Generics

- Möglichkeit den Typen einer Klasse offen zu lassen oder beim Erstellen einer Instanz einer Collection anzugeben

#### Benutzung einer generischen Klasse

```java=1
List<Number> list = new ArrayList<Number>(); //Liste in der Zahlen gespeichert werden
list.add(new Integer(1)); 
list.add(new Double(2.0);          
```


#### Schreiben einer generischen Klasse

- `T` gibt an, dass der Typ noch festgelegt werden kann und ist der Platzhalter für den Typen (bei mehreren generischen Parametern `U`, `V`, ...)
- bei der Verwendung der Klasse wird dann jedes T zur selben Klasse 

```java=1
public class MyValues<T>{
    private T myFirstValue;
    private T mySecondValue; 
    public MyValues(T t1, T t2){
        this.myFirstValue = t1;
        this.mySecondValue = t2;
    }
     public T getFirstValue(){
        return this.myFirstValue;
     } 
}
```

- Instanziierung dieser Klasse mit Integer:
```java=1
MyValues<Integer> a = new MyValues<Integer>(Integer.valueOf(1), Integer.valueOf(12));
System.out.println(a.getFirstValue()); //printet 1
```

#### Einschränkung der Typparameter

- Obergrenze für Typen, die in T drinnen stecken dürfen: ` MyClass<T extends SomeClass>`
- SomeClass darf als T verwendet werden, sowie alles Unterklassen

### Checkfragen

- [ ] Ist lineare oder binäre Suche normalerweise schneller?
- [ ] Nach welchem Prinzip arbeitet binäre Suche?
- [ ] Was gibt die Laufzeit an? Was sind bekannte Laufzeit-Klassen?
- [ ] Welche Laufzeiten haben die vorgestellten Sortieralgorithmen?
- [ ] Weche Datenstrukuren gibt es?
- [ ] Welche Datenstrukturen eignen sich für was?
- [ ] Wie funktieren Bäume?
- [ ] Wie viele Kinder können Knoten von Bäumen haben?
- [ ] Was sind Collections?
- [ ] Was sind Generics?
- [ ] Wie arbeiten Collections und Generics zusammen?
- [ ] Wie definiert man eine generische Klasse?
- [ ] Wie kann man die Objekte, die in generischen Klassen gespeichert werden einschränken?

## 4 - Advanced Concepts

### Exceptions

#### Fangen von Exceptions

- Fehler lassen sich in `try`-`catch`-Blöcken abfangen und verarbeiten
- Code, der einen Fehler auslösen könnte in `try`
- In `catch` wird angegeben, welche Art von Fehler abgefangen werden soll, z.B `ArithmeticException` (oder einfach Elternklasse `Exception`)
- Im `catch`-Block kann etwas mit dem Fehler gemacht werden (muss aber nicht)
- Der `finally`-Block ist optional, wird aber unabhänig davon ausgefürt, ob es einen Fehler gab

```java=1
try{
     //Code, der Exception auslösen könnte
} catch(Exception e){
    //Was soll passieren, wenn Fehler gefangen wurde?
    e.printStackTrace(); // Printet Fehler
    e.getMessage(); //Menschenlesbare Fehlerbeschreibung
}finally { 
     //Was soll auf jeden Fall ausgeführt werden
}
```
- In einem catch-Block können mehrere Exceptions abgefangen werden 

``` java=3
} catch(ClassNotFoundException | NullPointerException e){
```

#### Arten von Exceptions

- Checked Exceptions: man wird vom Compiler dazu gezwungen einen möglichen Fehler mit try-catch abzufangen (z.B. `InterruptedException`)
- Unchecked Exceptions: ein try-catch-Block ist optional. Alle Runtime-Exceptions sind unchecked (z.B. `ArithmeticException`, `NullPointerException`, `ArrayIndexOutOfBoundsException`)

#### Throws

- Schlüsselwort `throws` ermöglicht es, Exception an Methode weiterzugeben, die die Methode, in der der Fehler aufgetreten ist, aufgerufen hat
- dort muss Fehler dann entweder gecatcht werden oder weitergeworfen werden

```java =1
> []public class ExceptionThrowing { 
> []
public class
    public static void main(String[] args) {  
        
        try{
            throwException();
        }catch(Exception e){
            e.printStackTrace();
        }
        
    }
    
    //Methode reicht Fehler weiter
    public static void throwException() throws Exception {
        int i = 0;
        int k = 5/i;
    } 
}
```

#### Werfen von eigenen Exceptions

- Man kann auch eigene Exception-Klassen erstellen und Objekte dieser werfen

```java=1
//Eigene Exception-Klasse
class CustomException extends Exception{
    
  public CustomException(String nachricht){
    super(nachricht);
  }
}
```

```java=1
//Klasse zum Werfen der CustomException
class Modulo2Checker{
    
  public String checkModulo2(int i) throws CustomException{
      
    if (i % 2 != 0){
      throw new CustomException("Kein Modulo 2!");
    }
    return("Modulo 2");
  }
}
```

### Nebenläufigkeit

- Nebenläufigkeit ist die parallele Ausführung eines Programms
- Ein `Prozess` ist eine Ausführung eines Programms und kann aus mehreren `Threads` bestehen
- Der `Scheduler` regelt, welcher Thread wann Prozessorzeit zugewieses bekommt
    - Die Strategien zur Zuweisung von Rechenzeit nennt man `Scheduling-Strategien`

#### Erstellung von Threads

- Bei der Erstellung von Threads hat man zwei Möglichkeiten:

1. Erben von der Klasse `Thread` und Implementierung der `run()`-Methode

```java=1
class FirstThread extends Thread{
    
    //run-Methode wird beim Start des Threads ausgeführt
    public void run(){
        for(int i=0; i<10; i++){
            System.out.println(i);
        }
    }
    
}
```
```java=1
//Starten des Threads mit .start()
new FirstThread().start();
```

2. Implementation des Interface `Runnable` und Implementierung der `run()`-Methode

```java=1
class FirstRunnable implements Runnable{
    
    //run-Methode wird beim Start des Threads ausgeführt
    public void run(){
        for(int i=0; i<10; i++){
            System.out.println(i);
        }
    }
    
}
```
```java=1
//Starten des Threads mit .start()
new Thread(new FirstRunnable()).start();
```

- Die `run()`-Methode agiert wie eine `main()`-Methode, nur für Threads, gibt also an, was beim Start eines Threads passieren soll
- Vorteil am Interface: die Klasse kann noch von einer weiteren Klasse erben

#### Thread-Zustände

![](https://i.imgur.com/8SvLI7s.png)

- `New`: nachdem Thread erstellt wurde, aber vor dem Starten
- `Runnable`: Thread wird entweder gerade ausgeführt (`Running`) oder wartet darauf vom Scheduler Prozessorzeit zugewiesen zu bekommen (`Ready`)
    - Scheduler lässt ständig zwischen beiden Zuständen wechseln
    - `yield()` Methode kann aufgerufen werden, um absichtlich von `Running` zu `Ready` zu wechseln, wenn der Thread zum Beispiel andere Threads vorlassen soll
- `Timed Waiting`: Zustand, in dem Thread für eine betimmte Zeit stillgelegt ist
    - `sleep(long)`legt ihn für bestimmte Zeit schlafen
    - `wait(long)`lässt ihn für bestimmte Zeit auf Ressource warten
    - `join(long)` wartet für bestimmte Zeit, ob ein anderer Thread seine Berechnung abgeschlossen hat
- `Waiting`: Zustand, in dem Thread für eine unbetimmte Zeit stillgelegt ist
    - `wait()`lässt ihn für unbestimmte Zeit auf Ressource warten
    - `join()` wartet für unbestimmte Zeit, ob ein anderer Thread seine Berechnung abgeschlossen hat
- `Blocked`: Thread wartet darauf, auf eine Ressource zugreifen zu können
- `Terminated`: Thread ist beendet

#### Interruptions (Unterbrechungen)

- beim Aufruf von `Thread.sleep()` muss man eine InterruptedException abfangen (`try-catch`), die bestimmt, was passiert, wenn ein Thread während seines Schlafs unterbrochen wird
- Thread haben eine `isInterrupted()`-Methode, die überprüft, ob der Thread unterbrochen wurde
- Flag kann mit der `interrupt()`-Methode gesetzt werden

```java=1
public void run(){
      while(!isInterrupted()){
            //...
      }
} 
```

#### Blockieren (synchronized)

- Schlüsselwort `synchronized` stellt sicher, dass nur ein Thread einen bestimmten Bereich betreten darf
- es ist möglich entweder ganze Methoden oder bestimmte Codezeilen zu synchronisieren
- wenn gerade ein anderer Thread auf die gewünschte Ressource zugreift, befindet sich der Thread im Zustand `Blocked`
- Synchronisierung einer Methode (nur ein Thread darf Methode gleichzeitig ausführen):

```java=1
synchronized void foo(){ 
    //do something
}
```
- Synchronisation von mehreren Codezeilen (nur ein Thread darf Code gleichzeitig ausführen):
```java=1
void foo(){ 
    synchronized(this){
        //do something
    }
}
``` 
- Synchronized bei statischen Methoden:

```java=1
static synchronized void foo(){ 
    //do something
}
```
```java=1
static void foo(){ 
    synchronized(Classname.class){
        //do something
    }
}
``` 

- außerdem möglich `synchronized`auf Objekten aufzurufen (nur ein Thread darf gleichzeitig auf Objekt zugreifen):

```java=1
Object o = new Object();
void foo(){ 
    synchronized(o){
        //do something
    }
}
``` 

#### Producer-Consumer-Problem

![](https://i.imgur.com/UI303Rs.png)

- wartende Threads befinden sich im Zustand `Waiting` oder `Timed Waiting`, bis sie benachrichtigt werden bzw. die Zeit abgelaufen ist
- wichtige Methoden im Kontext von Producer-Consumer:
    - `wait()`: Warten auf Ressource 
    - `notify()`: Benachrichtigen eines Threads, der auf Ressource wartet
    - `notifyAll()`:Benachrichtigen aller Threads, die auf Ressource warten

### Streams

- Datenstrom von Ressource zum Programm oder vom Programm zur Ressource
- Ein Stream ist eine Sequenz von Daten
- Arten: `Byte-Stream` (Subklassen von `InputStream` oder `OutputStream`) und `Character-Stream` (Subklassen von `Reader` oder `Writer`)
- Beispiel für Byte-Stream:

```java=1
FileInputStream in = null; 
FileOutputStream out = null; 
try {
    in = new FileInputStream("myfile.dat");
    out = new FileOutputStream("myotherfile.dat"); 
    int c;
    //Kopieren und Schreiben der Daten
    while ((c = in.read()) != -1) out.write(c);
} catch (IOException e) {    
    e.printStackTrace();
} finally {
    //Beenden der Streams
    if (in != null) in.close(); 
    if (out != null) out.close();
}
```
- Für einen Character-Stream (Datei ist `.txt`) muss `FileInputStream` zu`FileReader` und`FileOutputStream` zu `FileWriter` werden

#### Buffer

- Effizientere Variante: Benutzen von Buffern. Dabei wird nicht jedes Zeichen einzeln geschrieben und gelesen, sondern mehrere Zeichen zusammengefasst
- Buffer werden geleert, wenn die `flush()`-Methode aufgerufen wird, der Stream geschlossen wird oder der Buffer voll ist
- Beispiel Buffer, der `txt`-Datei ausprintet:

```java=1
BufferedReader br = new BufferedReader(new FileReader("src.txt")); 
String line = null;
while((line = br.readLine())!=null){
    System.out.println(line);
}
br.close();
```

- Buffer, der Datei kopiert:

```java=1
BufferedReader br = new BufferedReader(new FileReader("src.txt")); 
PrintWriter out = new PrintWriter(new FileWriter("copy.txt")); 
String line = null;
while((line = br.readLine())!=null){
    out.println(line);
}
br.close();
out.close();
```

#### Beenden von Streams

- Variante ohne Auto-Closable

```java=1
FileOutputStream out = null; 
try {
    out = new FileOutputStream("myfile.dat");
    out.write(123);
} catch (IOException e) {
    e.printStackTrace(); } 
finally {
    try{
        if (out != null) out.close();
    } catch (IOExeption ioe){ 
        /*do nothing*/
    }
}
```
- Konfortabler ist die Verwendung von `AutoClosable`

```java=1
try (FileOutputStream out = new FileOutputStream("myfile.dat");){         
    out.write(123);
} catch (IOException e) { 
    e.printStackTrace();
}

```
### Sockets

- Wichtig für die Kommunikation zwischen Clients und Servern
- Sind eine Art von Streams
- Ablauf:

![](https://i.imgur.com/fKqTg6t.png)

#### Server

- Server benutzen zur Kommunikation `ServerSockets`
- Ein Server, der einfach nur zurückschickt, was ihm gesendet wurde (Echo-Server):


```java=1
ServerSocket server = new ServerSocket(8082); 
Socket client = server.accept();
int i;
while ((i = client.getInputStream().read()) != -1) {
    client.getOutputStream().write(i);
}
server.close();
```

#### Clients

- Clients benutzen zur Kommunikation `Sockets`
- Ein Client, der einfach nur zurückschickt, was ihm gesendet wurde (Echo-Client):


```java=1

Socket s = new Socket("127.0.0.1", 8082); 
s.getOutputStream().write(42); 
s.getOutputStream().write(123); 
System.out.println(s.getInputStream().read()); 
s.close();
```



### Checkfragen

- [ ] Welche Arten von Exceptions gibt es?
- [ ] Wann zwingt einen der Compiler try-catch zu verwenden?
- [ ] In welchen Fällen ist ein `finally`-Block sinnvoll?
- [ ] Wie kann man verhindern, dass Exceptions auftreten (z.B. `NullPointerException`)
- [ ] Ist es sinnvoll um seinen gesamten Code ein `try` rumzumachen?
- [ ] Wie kann man sich die Nachricht einer Exception ausgeben lassen?
- [ ] Wieviele `catch`-Blöcke kann man maximal verwenden?
- [ ] Was macht `throws`?
- [ ] Was sind die Möglichkeiten Threads zu starten? Welche Vorteile haben sie?
- [ ] Was ist der Unterschied zwischen `.start()` und `.run()`?
- [ ] Welche Thread-Zustände gibt es?
- [ ] Was macht ein Scheduler?
- [ ] Was muss man beachten, wenn man einen Thread schlafen legt?
- [ ] Was macht die `.join(long)`-Methode?
- [ ] In welchen Formen kann `synchronized` auftreten? Was macht es?
- [ ] Wann tritt das Producer-Consumer-Problem auf?
- [ ] Was ist der Unterschied zwischen `notify` und `notifyAll`?
- [ ] Welche Stream-Arten gibt es?
- [ ] Was ist ein Buffer und wie verwendet man ihn?
- [ ] Wie schließt man am besten einen Stream?
- [ ] Was ist der Unterschied zwischen Client und Server?
- [ ] Was sind Ports?




