Name: Yilong Wang
Matriknummer: 0483728
Fach: Wirtschaftsingenieurwesen


| ![](attachment/a9c7fa0b7f905648bef371755b0dc92a.png) |     |
| ------------------------------ | --- |
*Ich habe auch das Dokument im md-Format in der ZIP-Datei platziert. Sie können die README.md im Stammverzeichnis finden, und im  "README-media" Ordner sind die entsprechenden Bilder.*

# UML Diageamm
Das UML Diagramm zeigt die Attribute und Methoden der Klassen:(diese UML Diagramm uml.puml und uml.png können Sie in Stammverzeichnis der Source-Code finden)
![](attachment/0a72d66bbcd5a08b3491078da1dd74e1.png)
Zuerst sehen wir uns die verschiedenen Funktionen an und erläutern einige wichtige Informationen.

# Product Klasse: 
## categories 
- speichere ich in einem HashSet, um die Einzigartigkeit des Inhalts sicherzustellen
## isSpecialStore 
- gibt an, ob die Lagereinheitskosten höher sind
## sellingMethod 
- ist eine Enum-Variable
## lagerkostenwert 
- ist die Einheitskosten eines Produkt-Instanz, die entweder durch den Konstruktor oder durch Aufrufen von calculateCost() berechnet werden

| ![](attachment/010d44238ad2bb398b7b9812d78bcf29.png) | ![](attachment/b4ef23c17d16cf690b1c6e17a6c67d5f.png) |
| ------------------------------ | ------------------------------ |
# TShirt Klasse:
- ist Kinderklasse von Product Klasse

# UserInput Interface
- definiert die Methoden, die in PredefineInput und ConsoleUserInput implementiert werden sollen.
# ConsoleUserInput
- um im Terminal mit dem User zu interagieren. 
- Die internen Funktionen dienen dazu, eine String als prompt zu akzeptieren und den vom User eingegebenen Inhalt je nach Funktion in verschiedene Datenstrukturen umzuwandeln und zurückzugeben.
- z.b![](attachment/6ce6b23bbb5a435a812dcad117cee826.png)
 
# PredefineInput
- für Testcode in Junit
-  enthält eine verlinkte Liste, die dazu dient, Benutzeraktionen im Terminal zu simulieren
- zum Beispiel: das Hinzufügen des Integer-Wertes 1 zur Liste, ähnlich wie wenn ein Benutzer die 1 im Terminal eingibt.

| ![](attachment/134e1d11b266a273d0c0519747849da2.png) |
| ------------------------------ |
| ![](attachment/8e7b846cd1921445399f4c16929c8a20.png) |
| ![](attachment/a203d4a1cca2316a6446b4a49d813fad.png) |
# Lagerverwaltungssystem Klasse
- wird verwendet, um im Terminal mit dem Benutzer zu interagieren
- wobei die internen Funktionen spezifische Geschäftsfunktionen implementieren:
- (1) List all products, (2) Search for products, (3) Manage products, (4) Calculate the monthly cost
# SystemMain Klasse
- User können in Terminal interagieren
![](attachment/cbc7682e2e31d5358c257421c93ebe3a.png)
# LagerverwaltungssystemTest Klasse
- Testcode über Lagerverwaltungssystem, um die Verhaltung zu simulieren

| ![](attachment/45c210174c21b0331309d4ddb4dc03ca.png) | ![](attachment/75ce7043425abc1cbd9f1a0047f9ed85.png) |
| ------------------------------ | ------------------------------ |
# Ergebnisse Zeigen
## Aufgabe 1: Sich alle gelagerten Produkte anzeigen zu  lassen.
### Code über Geschäftsfunktione
![](attachment/31a0fdb0696cb0a3df719061799cf849.png)
### Testcode für Junit
![](attachment/0fa606b0ed93a79eba261e84fbe18242.png)
### User-Perspektive (in SystemMain  interagieren)
![](attachment/b31054d09b32573aeba8eceb74bc108f.png)
## Aufgabe 2: Nach Produkten und Produktkategorien zu suchen.
### Code über Geschäftsfunktione

| ![](attachment/ddcd903948206b3e1b6a35be7230852b.png)   |     |     |     |
| -------------------------------- | --- | --- | --- |
| ![](attachment/3c287c8930ed063473b478a7c05b5a95.png) |     |     |     |
### Testcode für Junit
```java
@Test  
@DisplayName("Test (2) Search for products")  
void testSearchProduct() {  
    LinkedList<Object> list = new LinkedList<>();  
    list.add(2);  
    list.add("Nike");  
    list.add(2);  
    list.add("10000");   
    // we have found the product  
    Lagerverwaltungssystem sys = initList(list);  
    String expected1 = "Here are all Nike products:\n" +  
            "TShirt{id=12697, name='Nike TShirt', price=12.99, weight=0.46, stockAmount=46, categories=[Clothing, T-Shirt, Cotton], isSpecialStore=false, sellingMethod=SELLING_BY_PIECE}\n";  
    String result1 = sys.interactive();  
    Assertions.assertEquals(expected1, result1);  
    // we didn't find the product  
    String expected2 = "Here are all 10000 products:\n";  
    String result2 = sys.interactive();  
    Assertions.assertEquals(expected2, result2);  
}
```
### User-Perspektive (in SystemMain  interagieren)
![](attachment/b393b8ca780be3d045d3bcd994664bee.png)
## Aufgabe 3: Produkte im System anzulegen und die gelagerte Menge zu ändern.
### Code über Geschäftsfunktione
![](attachment/c3abc192baccf0472196bad1748517c0.png)### Testcode für Junit
![](attachment/16088577f61456fad96569d4316d93e9.png)
### User-Perspektive (in SystemMain  interagieren)
Falls die gesuchte Produkt nicht in die Lagerverwaltungssystem existiert:
![](attachment/33c081f0ebfa5c86496ce254e3fcd8ed.png)
Falls die gesuchte Produkt in die Lagerverwaltungssystem existiert:
![](attachment/3858ea759d803fb616a002a010bd742b.png)## Aufgabe 4: Die monatlichen Kosten für die Lagerung aller Produkte ausgeben.
### Code über Geschäftsfunktione
```java
case 4:  
    double allCost = 0;  
    for (Product product : allProducts) {  
        product.calculateCost();
        allCost += product.getLagerkostenwert();  
    }  
    log.info("The monthly cost for storing all products is "+allCost+"€.");  
    break;
```
### Testcode für Junit
```java
@Test  
@DisplayName("Test (4) Calculate the monthly cost")  
void testCalculateCost(){  
    LinkedList<Object> list = new LinkedList<>();  
    list.add(4);  
  
    Lagerverwaltungssystem sys = initList(list);  
  
    String expected1 = "The monthly cost for storing all products is 9.878000000000002€.";  
    String result1 = sys.interactive();  
    Assertions.assertEquals(expected1, result1);  
}
```
### User-Perspektive (in SystemMain  interagieren)
![](attachment/a8f321ac038674deb5b23c7673c45168.png)
## Aufgabe 5: 
Im Lagersystem sollen sowohl Produkte die nach Gewicht verkauft werden (Schüttgut
wie z. B. Erde, Beton) als auch einzeln verkaufte Produkte (Stückgut) gelagert werden.

- Wir können anhand sellingMethodeiner Product-Instanz feststellen, welche Produkte nach Gewicht verkauft werden und welche als Einzelprodukte (Stückgut) verkauft werden. (private SellingMethod sellingMethod;) 
```java
public enum SellingMethod {  
    SELLING_BY_WEIGHT,  
    SELLING_BY_PIECE  
}
```

## Alle Ergebnisse JUnit
![](attachment/7a44b9da3b133f8df43462599b37ebee.png)
## Coverage der Test
![](attachment/42027dce7d5644a8e662846382aad501.png)