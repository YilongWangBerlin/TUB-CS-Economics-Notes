#  Aufgabe 1– SelectionSort 
In der Vorlesung wurde der SelectionSort Algorithmus vorgestellt. Implementieren Sie diesen für ein Array. Erstellen Sie hierzu eine Klasse SortAlgorithms, die eine statische Methode selectionSort anbietet. Diese Methode soll ein Array vom Typ int[] sortieren, das als Parameter übergeben wird. Ein Rückgabetyp ist nicht erforderlich, da die Methode auf einem Referenzdatentyp arbeitet. Laden Sie sich die Klasse SortAlgorithmsDemo aus dem ISIS-System herunter und überprüfen Sie ihre Implementierung damit

## Selection Sort
- find the smallest element in the unsorted segment and swap it with the element at the beginning of the unsorted part
- move the boundary of sorted segment one position to the right

```java
public class SortierAlg {  
    public static void main(String[] args) {  
        int[] myList = {5, 21, 87, 24, 25, 13, 9, 11, 4, 3};  
        for (int i : myList) {  
            System.out.print(i + ", ");  
        }  
        System.out.println();  
        selectionSort(myList);  
  
        for (int i : myList) {  
            System.out.print(i + ", ");  
        }  
    }  
  
    public static void selectionSort(int[] myList) {  
        for (int i = 0; i < myList.length; i++) {  
            int min = myList[i];  
            int index = i;  
  
            for (int j = i + 1; j < myList.length; j++) {  
                if (min > myList[j]) {  
                    min = myList[j];  
                    index = j;  
                }  
            }  
            int temp = myList[i];  
            myList[i] = min;  
            myList[index] = temp;  
  
        }  
    }  
  
}
```

Ausgabe:

```
5, 21, 87, 24, 25, 13, 9, 11, 4, 3, 
3, 4, 5, 9, 11, 13, 21, 24, 25, 87, 
Process finished with exit code 0
```

# Aufgabe 2 – InsertionSort 
Auch der InsertionSort Algorithmus wurde in der Vorlesung vorgestellt. Implementieren Sie auch diesen Algorithmus in der Klasse SortAlgorithms. Erstellen Sie hierzu eine statische Methode insertionSort. Diese Methode soll ein Array vom Typ int[] sortieren, das als Parameter übergeben wird. Ein Rückgabetyp ist nicht erforderlich, da die Methode auf einem Referenzdatentyp arbeitet. Hinweis: Es genügt wenn positive Zahlen sortiert werden können. Überprüfen Sie ihre Implementierung wieder mit der Klasse SortAlgorithmsDemo.

## InsertionSort 

1. **Starting Point**: Begin with the assumption that the first element is already sorted.
2. **Select the Next Element**: Move to the next element, and consider it the key element to be inserted.
3. **Compare and Insert**: Compare the key element with the elements in the sorted segment (from right to left). Shift all elements that are greater than the key to one position to the right.
4. **Insert Key**: Insert the key element at the correct position left vacant by the shifted elements.
5. **Repeat**: Repeat the process for all elements in the array.

```java
public class InsertionSort {  
  
    public static void sort(int[] array) {  
        // Start from the second element (index 1) as the first element is already considered sorted  
        for (int i = 1; i < array.length; i++) {  
            int key = array[i];  // The element to be inserted into the sorted segment  
            int j = i - 1;       // Start comparing with the element just before i  
  
            // Move elements of array[0..i-1], that are greater than key, to one position ahead            // of their current position            while (j >= 0 && array[j] > key) {  
                array[j + 1] = array[j];  
                j = j - 1;  
            }  
            // Place the key in its correct position  
            array[j + 1] = key;  
        }  
    }  
  
    public static void main(String[] args) {  
        int[] numbers = { 9, 5, 1, 4, 3 };  
        sort(numbers);  
        for (int num : numbers) {  
            System.out.print(num + " ");  
        }  
    }  
}
```

Output:
```
1 3 4 5 9 

```

Musterlösung:
```java
import java.util.Arrays;  
  
public class SortAlgorithmsDemo {  
  
    public static void main(String[] args) {  
         
       // Test selectionSort  
       int[] selectionArray = { 1, 4, 5, 2, 7, 3, 2, 9 };  
       System.out.println("Pre applying selectionSort" + Arrays.toString(selectionArray));  
       SortAlgorithms.selectionSort(selectionArray);  
       System.out.println("Post applying selectionSort" + Arrays.toString(selectionArray));  
         
       // Test insertionSort  
       int[] insertionArray = { 1, 4, 5, 2, 7, 3, 2, 9 };  
       System.out.println("Pre applying insertionSort" + Arrays.toString(insertionArray));  
       SortAlgorithms.insertionSort(insertionArray);  
       System.out.println("Post applying insertionSort" + Arrays.toString(insertionArray));  
    }  
  
}
```

```java
public class SortAlgorithms {  
  
    public static void selectionSort(int[] array) {  
  
       for (int i = 0; i < array.length; i++) {  
          int index = indexOfSmallestAbove(array, i);  
          swap(array, i, index);  
       }  
  
    }  
  
    public static void insertionSort(int[] array) {  
       int[] copy = array.clone();  
  
       for (int i = 0; i < array.length; i++) {  
          array[i] = 0;  
       }  
       for (int i = 0; i < copy.length; i++) {  
          insert(array, copy[i]);  
       }  
    }  
  
    private static void insert(int[] array, int value) {  
       int i = 0;  
       while ((array[i] != 0) & (value > array[i]) & (i < array.length - 1)) {  
          i++;  
       }  
       shiftRightIncluding(array, i);  
       array[i] = value;  
    }  
  
    private static void shiftRightIncluding(int[] array, int i) {  
       for (int j = array.length - 1; j > i; j--) {  
          swap(array, j, j - 1);  
       }  
  
    }  
  
    private static int indexOfSmallestAbove(int[] array, int position) {  
       int index = position;  
       int smallest = array[position];  
       for (int i = position; i < array.length; i++) {  
          if (array[i] < smallest) {  
             smallest = array[i];  
             index = i;  
          }  
       }  
       return index;  
  
    }  
  
    private static void swap(int[] array, int a, int b) {  
       int helper = array[a];  
       array[a] = array[b];  
       array[b] = helper;  
    }  
  
}
```

Ausgabe:

```
Pre applying selectionSort[1, 4, 5, 2, 7, 3, 2, 9]
Post applying selectionSort[1, 2, 2, 3, 4, 5, 7, 9]
Pre applying insertionSort[1, 4, 5, 2, 7, 3, 2, 9]
Post applying insertionSort[1, 2, 2, 3, 4, 5, 7, 9]

```


# Aufgabe 3 – Datenstruktur DoublyLinked List 
Programmieren Sie eine doppelt verkettete Liste, die Objekte des Typs String aufnimmt. Orientieren Sie sich dazu am Aufbau und den Operationen der einfach verketteten Liste, die in der Vorlesung vorgestellt wurde. Welche Vor- und Nachteile bringt die doppelte Verkettung mit sich?

```java
public class DoublyLinkedListEntry {  
  
    /**value of this list entry*/  
    public Object value;  
      
    /**references to the successor and predecessor of this list entry*/  
    public DoublyLinkedListEntry next;  
    public DoublyLinkedListEntry prev;   
}
```


```java
public class DoublyLinkedList {  
  
    /** head of the list */  
    private DoublyLinkedListEntry head;  
  
    /**  
     * inserts a values at the end of the list     ** @param value  
     *            value which shall be added  
     */    
     public void append(Object value) {  
		if (head == null) {  
          // insert at head  
          head = new DoublyLinkedListEntry();  
          head.value = value;  
          return;  
       }  
       // find end  
       DoublyLinkedListEntry current = head, last = head;  
       while (current != null) {  
          last = current;  
          current = current.next;  
       }  
       current = new DoublyLinkedListEntry();  
       current.value = value;  
       current.prev = last;  
       last.next = current;  
    }  
  
    /**  
     * inserts a value at the head of the list     ** @param value  
     *            value which shall be added  
     */    
     public void insertAtHead(Object value) {  
       if (head == null) {  
          head = new DoublyLinkedListEntry();  
          head.value = value;  
          return;  
       }  
       DoublyLinkedListEntry newHead = new DoublyLinkedListEntry();  
       newHead.value = value;  
       newHead.next = head;  
       head.prev = newHead;  
       head = newHead;  
    }  
  
    /**  
     * inserts a value after the entry with the value "after" or at the end of     * the list if the value is not contained     ** @param value  
     *            value which shall be added  
     * @param after  
     *            desired predecessor for value  
     */    
     public void insertAfter(Object value, Object after) {  
       if (head == null) {  
          head = new DoublyLinkedListEntry();  
          head.value = value;  
          return;  
       }  
       DoublyLinkedListEntry newone = new DoublyLinkedListEntry();  
       newone.value = value;  
       DoublyLinkedListEntry current = head;  
       while (current.next != null && current.value != after)  
          current = current.next;  
       DoublyLinkedListEntry temp = current.next;  
       current.next = newone;  
       newone.prev = current;  
       newone.next = temp;  
       if (current.next != null) {  
          temp.prev = newone;  
       }  
    }  
  
    /**  
     *     *   
* @param position  
     * @return the value at position "position" or null if the list has less  
     *         entries     */    public Object getValue(int position) {  
       int counter = 0;  
       DoublyLinkedListEntry current = head;  
       while (current != null && position != counter++)  
          current = current.next;  
       if (current == null)  
          return null;  
       else  
          return current.value;  
    }  
  
    /**  
     * deletes the specified value if contained in this list. Note: this method     * uses reference comparison, not equals()!     ** @param value  
     */  
    public void deleteValue(Object value) {  
       if (head == null)  
          return; // empty list  
       DoublyLinkedListEntry current = head, last = head;  
       if (current.value == value) {  
          // it's the head element  
          head = head.next;  
          return;  
       }  
       while (current.next != null && current.value != value) {  
          last = current;  
          current = current.next;  
       }  
       if (current.value != value)  
          return; // not in this list  
       last.next = current.next;  
       if (current.next != null)  
          current.next.prev = last;  
  
    }  
  
    /*  
     * (non-Javadoc)     *     * @see java.lang.Object#toString()  
     */    @Override  
    public String toString() {  
       DoublyLinkedListEntry current = head;  
       if (current == null)  
          return "[]";  
       String res = "[";  
       while (current != null && current.next != null) {  
          res += current.value + ",";  
          current = current.next;  
       }  
       res += current.value + "]";  
       return res;  
    }  
  
}
```

```java
public class DoublyLinkedListDemo {  
  
    public static void main(String[] args) {  
       DoublyLinkedList sll = new DoublyLinkedList();  
       System.out.println(sll);  
       sll.append(5);  
       System.out.println(sll);  
       sll.append(7);  
       System.out.println(sll);  
       sll.insertAtHead(8);  
       System.out.println(sll);  
       sll.insertAfter(11, 5);  
       System.out.println(sll);  
       System.out.println(sll.getValue(1));  
       sll.deleteValue(5);  
       System.out.println(sll);  
       sll.deleteValue(8);  
       System.out.println(sll);  
       sll.deleteValue(7);  
       System.out.println(sll);  
       sll.deleteValue(11);  
       System.out.println(sll);  
    }  
      
}
```

output:
```
[]
[5]
[5,7]
[8,5,7]
[8,5,11,7]
5
[8,11,7]
[11,7]
[11]
[]
```

# Aufgabe 4 – Stack mit Array 
Ein Stack, oder auch Stapelspeicher, ist eine Datenstruktur, die folgende Operationen vorsieht: 

- push: Legt ein Element auf den Stapel 
- pop: Entfernt das oberste Element vom Stapel und liefert es zurück. 
- top: Gibt das oberste Element des Stapels zurück 

Implementieren Sie einen Stack für den Datentyp Object. Verwenden Sie ein Array als interne Datenstruktur. Der Stack muss nicht mehr als 10 Elemente aufnehmen können. Nutzen sie die Klasse StackDemo aus dem ISIS-System um ihre Implementierung zu überprüfen.

```java
public class StackDemo {  
  
    public static void main(String[] args) {  
       System.out.println("ArrayStack Demo:");  
       ArrayStack arrayStack = new ArrayStack();  
       arrayStack.push(new String("Hallo"));  
       arrayStack.push(new String("Es wurde gepusht!"));  
       System.out.println(arrayStack.top());  
       arrayStack.push(new String("Foo"));  
       arrayStack.push(new String("Bar"));  
       System.out.println(arrayStack.pop());  
       System.out.println(arrayStack.pop());  
       System.out.println(arrayStack.pop());       
       System.out.println(arrayStack.pop());  
  
       System.out.println("\n" + "ListStack Demo:");  
  
       ListStack listStack = new ListStack();  
       listStack.push(new String("Hallo"));  
       listStack.push(new String("Es wurde gepusht!"));  
       System.out.println(listStack.top());  
       listStack.push(new String("Foo"));  
       listStack.push(new String("Bar"));  
       System.out.println(listStack.pop());  
       System.out.println(listStack.pop());  
       System.out.println(listStack.pop());        
       System.out.println(listStack.pop());  
         
    }  
  
}
```

```java
public class ArrayStack {  
  
    Object[] array = new Object[10];  
    private int head = 0 ; // Stackpointer  
    public void push(Object o){  
       head=head+1;  
       array[head] = o;  
    }  
    public Object pop(){  
       head=head-1;  
       return array[head+1];  
         
    }  
      
    public Object top(){  
       return array[head];  
    }  
      
}
```

```
ArrayStack Demo:
Es wurde gepusht!
Bar
Foo
Es wurde gepusht!
Hallo

ListStack Demo:
Es wurde gepusht!
Bar
Foo
Es wurde gepusht!
Hallo
```

# Aufgabe 5 – Stack mit DoublyLinkedList 
Implementieren Sie den Stack aus Aufgabe 4 auf Basis der doppelt verketteten Liste aus Aufgabe 3. Wäre auch eine SinglyLinkedList für die Implementierung geeignet? Nutzen sie die Klasse StackDemo aus dem ISIS-System um ihre Implementierung zu überprüfen.

```java
public class ListStack {  
      
    DoublyLinkedList dll = new DoublyLinkedList();  
  
    public void push(Object o){  
		dll.insertAtHead(o);  
    }  
      
    public Object pop(){  
		Object result = dll.getValue(0);  
		dll.deleteValue(result);  
		return result;  
         
    }  
      
    public Object top(){  
	    return dll.getValue(0);  
    }  
      
}
```

# Aufgabe 6 – Prüfungsverwaltung mit Sets 

Sie sind für die Prüfungsorganisation in einem Fach mit verpflichtender Vorleistung zuständig. Um den manuellen Aufwand zu reduzieren, wollen sie ein kleines Java Programm entwickeln, das die Prüfungsteilnehmer verwaltet.

Folgende Informationen liegen Ihnen vor: 
- eine Liste der Anmeldungen im QISPOS-System 
- eine Liste der Anmeldungen mit einem physischen Prüfungsschein 
- eine Liste der Teilnehmer, die die verpflichtende Vorleistung bestanden haben.

Mit welchen Operationen können nun die folgenden Informationen bestimmt werden? Warum ist der Datentyp Set, der eine Menge implementiert, dafür besonders geeignet? 

- Liste der angemeldeten Studenten 
- Liste der für die Prüfung zugelassenen Studenten

Erstellen sie eine Klasse Pruefungsverwaltung, die in der main-Methode zuerst die gegebenen Informationen einliest und dann die gesuchten Informationen daraus berechnet. Teilnehmer sollen durch ihren Namen identifiziert werden. Mit welcher Methode der Klasse Set kann die Frage ob ein bestimmter Teilnehmer zur Prüfung zugelassen ist beantwortet werden? 

Wahrscheinlich zeigt Eclipse Ihnen Warnungen im Kontext der Verwendung des Datentyps Set an. Wie können Sie sich diese Warnungen erklären?

在Java中，这两行代码中定义的 `Set` 集合有一个主要区别，即泛型的使用。

1. `Set<String> quispos = new HashSet<String>();`
   
   这行代码使用了泛型（`<String>`），明确指定了集合中只能包含 `String` 类型的对象。这意味着在编译时，Java编译器会强制检查集合中添加的任何对象是否都是字符串，并且在取出对象时，会自动将它们视为字符串，无需进行类型转换。这种方式可以避免在运行时发生 `ClassCastException`，并且代码更加安全和易于维护。

2. `Set quispos = new HashSet();`
   
   这行代码没有使用泛型，它是在Java 5之前的代码风格。这种定义的集合可以包含任何类型的对象。由于不使用泛型，所以在编译时不会进行类型检查。这意味着我们可以向这个集合中添加任何类型的对象，但是在取出对象时，我们通常需要进行类型转换，因为取出的对象将被视为 `Object` 类型。如果我们错误地将一个对象转换为错误的类型，将会在运行时抛出 `ClassCastException`。

综上所述，使用泛型可以让Java代码更加安全，减少运行时错误，并且在编写代码时给予更清晰的类型指示。因此，建议使用泛型来定义集合。

```java
import java.util.HashSet;  
import java.util.Set;  
  
  
public class Pruefungsverwaltung {  
  
    public static void main(String[] args) {  
         
       Set quispos = new HashSet();  
       quispos.add("Hai");  
       quispos.add("Bjergsen");  
       quispos.add("Hai"); // Duplikate werden nicht hinzugefügt.  
       Set manuell = new HashSet();  
       manuell.add("Saintvicious");  
       manuell.add("Doublelift");  
         
       Set angemeldet = new HashSet(quispos);  
       angemeldet.addAll(manuell);  
       System.out.println("Angemeldet: " + angemeldet);  
         
         
       Set vorleistung = new HashSet();  
       vorleistung.add("Hai");  
       vorleistung.add("Bjergsen");  
       vorleistung.add("Froggen");  
       vorleistung.add("Doublelift");  
         
       Set zugelassen = new HashSet(angemeldet);  
       zugelassen.retainAll(vorleistung);  
       System.out.println("Zugelassen: "+ zugelassen);  
         
  
    }  
  
}
```

```java
import java.util.HashSet;  
import java.util.Set;  
  
  
public class PruefungsverwaltungTypisiert {  
  
    public static void main(String[] args) {  
         
       Set<String> quispos = new HashSet<String>();  
       quispos.add("Hai");  
       quispos.add("Bjergsen");  
       quispos.add("Hai"); // Duplikate werden nicht hinzugefügt.  
       Set<String> manuell = new HashSet<String>();  
       manuell.add("Saintvicious");  
       manuell.add("Doublelift");  
         
       Set<String> angemeldet = new HashSet<String>(quispos);  
       angemeldet.addAll(manuell);  
       System.out.println("Angemeldet: " + angemeldet);  
         
         
       Set<String> vorleistung = new HashSet<String>();  
       vorleistung.add("Hai");  
       vorleistung.add("Bjergsen");  
       vorleistung.add("Froggen");  
       vorleistung.add("Doublelift");  
         
       Set<String> zugelassen = new HashSet<String>(angemeldet);  
       zugelassen.retainAll(vorleistung);  
       System.out.println("Zugelassen: "+ zugelassen);  
         
  
    }  
  
}
```

```
Angemeldet: [Hai, Saintvicious, Bjergsen, Doublelift]
Zugelassen: [Hai, Bjergsen, Doublelift]
```

# Aufgabe 7 – Generische Datentypen: ArrayList 
In der Vorlesung haben Sie generische Datentypen kennengelernt. Eine Implementierung einer generischen Liste, d.h. des List-Interfaces, stellt die Klasse ArrayList dar. Erstellen Sie eine Klasse ArrayListDemo mit einer main-Methode. Deklarieren und instanziieren Sie in dieser eine ArrayList, die Objekte vom Typ String aufnehmen kann. Fügen Sie die Namen der Tutorienteilnehmer ein. Geben sie die Teilnehmer auf der Konsole aus. Die Namen der Teilnehmer sollen durch Semikolons getrennt werden. Nutzen sie hierfür die vereinfachte for-Schleife.


```java
import java.util.ArrayList;  
import java.util.List;  
  
  
  
public class ArrayListDemo {  
    public static void main(String[] args) {  
       List<String> teilnehmer = new ArrayList<String>();  
       teilnehmer.add("Rekkles");  
       teilnehmer.add("Tabz");  
       teilnehmer.add("Piglet");  
       teilnehmer.add("Sneaky");  
         
       String members = "";  
       for(String t:teilnehmer){  
          members += t+";";  
       }  
       members = members.substring(0, members.length()-1);  
       System.out.println(members);  
    }  
}
```

```
Rekkles;Tabz;Piglet;Sneaky

```

# Aufgabe 9 – Iterator 
Iterators bieten eine weitere Möglichkeit Collections einfach zu traversieren. Jede Instanz einer Klasse, die das Iterable Interface implementiert kann ein Iterator-Objekt zurückliefern. Alle Kindklassen von Collection implementieren Iterable. Realisieren Sie die Ausgabe aus Aufgabe 6 mit Hilfe eines Iterators in der Klasse ListIteratorDemo.

```java
import java.util.ArrayList;  
import java.util.Iterator;  
import java.util.List;  
  
  
  
public class ListIteratorDemo {  
    public static void main(String[] args) {  
       List<String> teilnehmer = new ArrayList<String>();  
       teilnehmer.add("Rekkles");  
       teilnehmer.add("Tabz");  
       teilnehmer.add("Piglet");  
       teilnehmer.add("Sneaky");  
         
       String members = "";  
       Iterator<String> it = teilnehmer.iterator();     
       while(it.hasNext()){  
          members += it.next()+";";  
       }  
       members = members.substring(0, members.length()-1);  
       System.out.println(members);  
    }  
}
```

```
Rekkles;Tabz;Piglet;Sneaky

```




# Aufgabe 10 – Generische DoublyLinked List 
Verändern Sie ihre Implementierung der DoublyLinked List aus Aufgabe 3 so, dass sie generische Datentypen verwalten kann. Erstellen sie hierzu die Klasse GenericDoublyLinkedList und GenericDoublyLinkedListEntry. Nehme Sie an es existiere die Klasse Tier. Wie wäre eine GenericDoublyLinkList zu deklarieren, die nur Tiere und ihre Kindklassen aufnimmt? Tipp: Wildcards


```java
public class GenericDoublyLinkedListEntry<T> {  
  
    /**value of this list entry*/  
    public T value;  
      
    /**references to the successor and predecessor of this list entry*/  
    public GenericDoublyLinkedListEntry<T> next;  
    public GenericDoublyLinkedListEntry<T> prev;   
}
```

```java
public class GenericDoublyLinkedList<T> {  
  
    /** head of the list */  
    private GenericDoublyLinkedListEntry<T> head;  
  
    /**  
     * inserts a values at the end of the list     ** @param value  
     *            value which shall be added  
     */    public void append(T value) {  
       if (head == null) {  
          // insert at head  
          head = new GenericDoublyLinkedListEntry<T>();  
          head.value = value;  
          return;  
       }  
       // find end  
       GenericDoublyLinkedListEntry<T> current = head, last = head;  
       while (current != null) {  
          last = current;  
          current = current.next;  
       }  
       current = new GenericDoublyLinkedListEntry<T>();  
       current.value = value;  
       current.prev = last;  
       last.next = current;  
    }  
  
    /**  
     * inserts a value at the head of the list     ** @param value  
     *            value which shall be added  
     */    public void insertAtHead(T value) {  
       if (head == null) {  
          head = new GenericDoublyLinkedListEntry<T>();  
          head.value = value;  
          return;  
       }  
       GenericDoublyLinkedListEntry<T> newHead = new GenericDoublyLinkedListEntry<T>();  
       newHead.value = value;  
       newHead.next = head;  
       head.prev= newHead;  
       head = newHead;  
    }  
  
    /**  
     * inserts a value after the entry with the value "after" or at the end of     * the list if the value is not contained     ** @param value  
     *            value which shall be added  
     * @param after  
     *            desired predecessor for value  
     */    public void insertAfter(T value, T after) {  
       if (head == null) {  
          head = new GenericDoublyLinkedListEntry<T>();  
          head.value = value;  
          return;  
       }  
       GenericDoublyLinkedListEntry<T> newone = new GenericDoublyLinkedListEntry<T>();  
       newone.value = value;  
       GenericDoublyLinkedListEntry<T> current = head;  
       while (current.next != null && current.value != after)  
          current = current.next;  
       GenericDoublyLinkedListEntry<T> temp = current.next;  
       current.next = newone;  
       newone.prev = current;  
       newone.next = temp;  
    }  
  
    /**  
     *     *   
* @param position  
     * @return the value at position "position" or null if the list has less  
     *         entries     */    public Object getValue(int position) {  
       int counter = 0;  
       GenericDoublyLinkedListEntry<T> current = head;  
       while (current != null && position != counter++)  
          current = current.next;  
       if (current == null)  
          return null;  
       else  
          return current.value;  
    }  
  
    /**  
     * deletes the specified value if contained in this list. Note: this method     * uses reference comparison, not equals()!     ** @param value  
     */  
    public void deleteValue(T value) {  
       if (head == null)  
          return; // empty list  
       GenericDoublyLinkedListEntry<T> current = head, last = head;  
       if (current.value == value) {  
          // it's the head element  
          head = head.next;  
          return;  
       }  
       while (current.next != null && current.value != value) {  
          last = current;  
          current = current.next;  
       }  
       if (current.value != value)  
          return; // not in this list  
       last.next = current.next;  
       if (current.next!=null)  
       current.next.prev= last;  
  
    }  
  
    /*  
     * (non-Javadoc)     *     * @see java.lang.Object#toString()  
     */    @Override  
    public String toString() {  
       GenericDoublyLinkedListEntry<T> current = head;  
       if (current == null)  
          return "[]";  
       String res = "[";  
       while (current != null && current.next != null) {  
          res += current.value + ",";  
          current = current.next;  
       }  
       res += current.value + "]";  
       return res;  
    }  
      
}
```

```java
public class GenericDoublyLinkedListDemo {  
  
    public static void main(String[] args) {  
       GenericDoublyLinkedList<Integer> sll = new GenericDoublyLinkedList<>();  
       System.out.println(sll);  
       sll.append(5);  
       System.out.println(sll);  
       sll.append(7);  
       System.out.println(sll);  
       sll.insertAtHead(8);  
       System.out.println(sll);  
       sll.insertAfter(11, 5);  
       System.out.println(sll);  
       System.out.println(sll.getValue(1));  
       sll.deleteValue(5);  
       System.out.println(sll);  
       sll.deleteValue(8);  
       System.out.println(sll);  
       sll.deleteValue(7);  
       System.out.println(sll);  
       sll.deleteValue(11);  
       System.out.println(sll);  
    }  
      
}
```


# HashMap

```java
import java.util.HashMap;
import java.util.Map;

public class HashMapExample {
    public static void main(String[] args) {
        // Create a new HashMap
        HashMap<String, Integer> map = new HashMap<>();

        // Adding entries to the HashMap
        map.put("Apple", 40);
        map.put("Banana", 10);
        map.put("Cherry", 15);
        map.put("Date", 20);

        // Accessing a value
        if (map.containsKey("Apple")) {
            Integer aPrice = map.get("Apple");
            System.out.println("Price of Apple is: " + aPrice);
        }

        // Removing an entry
        map.remove("Banana");

        // Iterating over HashMap
        System.out.println("Current HashMap:");
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            String key = entry.getKey();
            Integer value = entry.getValue();
            System.out.println(key + " => " + value);
        }

        // Checking the size of the map
        System.out.println("The size of the map is: " + map.size());

        // Checking if the map contains a key
        if (map.containsKey("Cherry")) {
            System.out.println("Cherry is in the map");
        }
    }
}

```

```
Price of Apple is: 40
Current HashMap:
Apple => 40
Cherry => 15
Date => 20
The size of the map is: 3
Cherry is in the map
```

