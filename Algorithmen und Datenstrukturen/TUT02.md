Themen:

- Assertionen (**assertions**)
- *Unit Testing*
- Javadoc Kommentare
- Behandlung von Ausnahmen (`exceptions`)
- Die Schnittstellen **Comparator** und **Comparable**
- Wdh: Wachstumsordnungen
- Empirische und Analytische Laufzeitanalyse
- Praktische Bestimmung von Laufzeitkomplexität
- Laufzeit von Java Collections
- Vorrangwarteschlange (***priority queue***, Prioritätenwarteschlange)
- indizierte Vorrangewarteschlange

# Wiederholung

## Schlüsselwörter – Lösung 
Was bedeuten die folgenden Begriffe? 
- static: Funktion ohne Erstellung eines Objekts aufrufbar. 
- this (in Bezug auf Variablen): Die Attribute des Objekts. 
- extends: Die Klasse erbt von einer Superklasse.

![](attachment/60ec8c4d8bf0e4e13d9670f74eab81f9.png)

## Vererbung – Polymorphie 

- Objekte einer Klasse können auch als Objekte der Superklasse behandelt werden 
- Objekte gleicher Superklasse können so z.B. in einem Array zusammen gespeichert werden
![](attachment/3ee10d4d895b1b26183495c4500c1a4b.png)

## Interfaces 

- enthält nur Methodenköpfe 
- wird ein Interface von einer Klasse implementiert, muss diese auch die Methoden des Interfaces implementieren 
- „Vererbung“ von mehreren „Klassen“

![](attachment/79d456016807c177e5599b45b6690eb7.png)
![](attachment/b88059ff4a59ae0fb04239f17a611abf.png)

## Abstrakte Klassen 
-  im Gegensatz zu Interfaces Vererbung (von Attributen und Methoden) möglich 
-  zu implementierende Funktionen werden mit dem Stichwort abstract gekennzeichnet und sind (wie bei Interfaces) nur Funktionsköpfe 
-  wenn eine Klasse von einer abstrakten Klasse erbt, muss diese auch die abstrakten Funktionen der Superklasse implementieren

![](attachment/08a71a6f61019dc689fa0a625bb786ba.png)
![](attachment/4264a0abdf8fd77a0288704faa6ba9d7.png)
![](attachment/c7cff59f4609b33777c0cb5d3b3188ba.png)
![](attachment/9de51a292fc23a109ea750f3ad41308c.png)
![](attachment/f20fec6e148d1527b95ffb3d281f732d.png)
![](attachment/58062c33274dae2641f7adc2fb71185f.png)

# Generics 
• wenn noch unbekannt, welchen Datentyp ein Objekt hat

# Arrays, Listen, Queues, Stacks

## Arrays 
• zusammenhängende Felder im Speicher 

Vorteil: 
• benötigen für Zugriffe keine komplexeren Funktionen 

Nachteil: 
• haben feste Größen und Positionen

![](attachment/2377c94922406a0fc920c46753f659cc.png)
![](attachment/c59225cd7698fd0ba0c0d7db8e15f474.png)
![](attachment/dcbccd646bacbf76ea54e75efe215314.png)
![](attachment/9b9b438144b5c471a90442f5eea7a81e.png)
![](attachment/488d1afce2104fda19c511ad991d0176.png)

## Listen 
• Verkettung von Objekten mithilfe einer komplexen Datenstruktur 

Vorteil: 
• Länge und Positionen sind variabel 

Nachteil: 
• Zugriffe benötigen immer vordefinierte Funktionen

### Listen – Arten 
• LinkedList: verkettete Liste 
• ArrayList: Liste mit Array-Indizes 
• Queue: siehe spätere Folien 
• Stack: siehe spätere Folien

![](attachment/8989281d2ddecd962c7f80ec77f93226.png)
![](attachment/79ecd4a948fe0f341e8a1df50ba883ae.png)
![](attachment/46444d5e3e90e9b69b8811be837ae8ee.png)
![](attachment/8ee2cd3481cf19dc39b08e2bac0920eb.png)

## Queue 

FIFO (First In First Out) 
• Elemente die zuerst eingefügt werden, werden auch als erstes wieder heraus genommen 
Funktionen: 
• offer: Element wird hinzugefügt 
• poll: Element wird heraus genommen

![](attachment/dba16ce6b5a2c250c6cba588b4542443.png)

![](attachment/cf8d89af86110bb82ec355b218b70651.png)

## Stack
FILO (First In Last Out) 
• Elemente die zuerst eingefügt werden, werden als letztes wieder heraus genommen 

Funktionen: 
• push: Element wird hinzugefügt 
• pop: Element wird heraus genommen
![](attachment/31c9cbc6838366bc5a85c13b5fb713e4.png)
![](attachment/4e915467b8e0a21093ee6846f038a7f8.png)

# Hausaufgabenblatt 02

![](attachment/fdb1c92347d86739aade8442539f011f.png)
![](attachment/01e9872c6fe488ab7c7a9e89ec51d100.png)

# Aufgabe5
![](attachment/4816475c428a67904c7e18e967e1347f.png)

## Aufgabe 1: Laufzeit - Grundlagen

1. ﻿﻿﻿Die Laufzeiten von Schritten, die nacheinander ausgeführt werden, werden addiert.
2. ﻿﻿﻿Die Laufzeiten von Schritten, die in einer Schleife ausgeführt werden, werden mit der Komplexität der Schleife multipliziert.
3. ﻿﻿﻿Wenn ein Problem in jedem Schritt doppelt so groß wird, ist die Laufzeit exponentiell.
4. ﻿﻿﻿Wenn ein Problem sich exponentiell schnell seiner Abbruchbedingung nähert, ist die Laufzeit logarithmisch.
5. ﻿﻿﻿Konstanten werden bei der Angabe der Komplexität weggelassen.
![](attachment/2c0fb0c28c387517e9365dcd89de5272.png)
![](attachment/5dc370a6ef5c8087f8b84262a0e36713.png)
![](attachment/7c05b0bfd90f48537a8dba08b2617941.png)
![](attachment/d3f905ce0ab70db04b6dd590afad3e25.png)
![](attachment/7ad2fa097518903d751fc4bd4388357a.png)
![](attachment/f992ad07118868ca23cd86e3f5a93094.png)
![](attachment/9ae29400a600ceb0fb49404a7cb6041b.png)

```java
abstract class Vehicle {
    protected int numberOfWheels;

    abstract void refillAir(int num);

    public Vehicle(int numberOfWheels) {
        this.numberOfWheels = numberOfWheels;
    }

    public void repair() {
        for (int i = 0; i < numberOfWheels; i++) {
            refillAir(i);
        }
    }
}

class Car extends Vehicle {
    public Car() {
        super(4);
    }

    @Override
    public void refillAir(int num) {
        System.out.print("C" + num);
    }
}

class Bicycle extends Vehicle {
    public Bicycle() {
        super(2);
    }

    @Override
    public void refillAir(int num) {
        System.out.print("b" + num);
    }
}
public class Garage {
    public static void main(String[] args) {
        Vehicle[] allVehicles = new Vehicle[3];
        Vehicle[] vehicles = new Vehicle[3];
        Car c1 = new Car();
        allVehicles[0] = c1;
        Bicycle b1 = new Bicycle();
        allVehicles[1] = b1;
        Bicycle b2 = new Bicycle();
        allVehicles[2] = b2;

        try {
    for (int i = 0; i <= 3; i++)
        allVehicles[i].repair();
} catch (Exception e) {
    System.out.println(e);
}

    }
}


```

