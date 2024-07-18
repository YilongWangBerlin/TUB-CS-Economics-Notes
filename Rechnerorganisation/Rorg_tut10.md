# Rechnerorganisasion TUT 10 - Leistung


## TUT
**Taktfrequenz** = 1 / T  (wie viele Befehle passen in eine Sekunde)
**T** = die Zeitdauer eines (jedes) Befehls (im Eintaktprozessor und im Pipeline-Prozessor)

**minimale Taktzykluszeit** = kürzestes Zeitdauer, die man mindestens braucht, um *JEDEN* ausführen zu können
-> man guckt sich den längsten Befehl an (weil wir keine unterschiedliche Taktdauer für unterschiedliche Befehle haben können)

**Hauptspeicher = RAM (Random Access Memory)** , [aber in allermeisten Fällen liegen noch Caches zwischen dem Prozessor und dem RAM]

## Aufgabe 1

a) Taktze
it berechnen:

t₁ = Zeitdauer für Fetch (Speicherzugriff)
t₂ = Zeitdauer für Decode (Registerzugriff) [es werden auch Steuersignale berechnen, kommt aber in Aufgabe nicht vor]
t₃ = Zeitdauer für Execute (ALU-Operation)
t₄ = Zeitdauer für Memory (Speicherzugriff)
t₅ = Zeitdauer für WriteBack (Registerzugriff)

load-word ist der längste Befehl, weil load-word alle Befehlsschritte ausführen muss

Deshalb, alle Befehlsschritt addieren:

T = Summe( t₁ + t₂ + t₃ + t₄ + t₅ ) = 2·150ps + 2·50ps + 100ps = 500ps
entspricht 2 GHz

```bash
echo "$(( 2 * 150 + 2 * 50 + 100 ))"
```

b)
Ziel: Befehl um 1.15x schneller machen, indem wir eine Komponente (d.h. Speicherzugrif, Registerzugriff oder ALU-Operation) schneller (= kürzer) machen

Speedup =! 1.15
S = $T_{alt}$ / $T_{neu}$  =   T / ( 2·150ps / α + 2·50ps / β + 100ps / γ )
T = 500ps

ps = Pikosekunde = 10⁻¹² (1 Billionstel)

α = Verschnellerung von Speicherzugriff
β = Verschnellerung von Registerzugriff
γ = Verschnellerung von ALU-Operation

- Fall 1: β = γ = 1,

  α = ? damit S = 1.15 ist?
  1.15 = 500ps
  <=> ( 2·150ps / α + 2·50ps / β + 100ps / γ ) · 1.15 = 500ps
  <=> 2·150ps / α  = 500ps / 1.15 - (2·50ps / β + 100ps / γ)
  <=> α = 2·150ps / ( 500ps / 1.15 - (2·50ps + 100ps) )   # β = γ = 1
  <=> α = 1.2777... = 115/90

  Zeit Speicherzugriff neu = 150ps / α = 117.4ps

- Fall 2: α = γ = 1

  β = 2·50ps / ( 500ps / 1.15 - (2·150ps / α + 100ps / γ) )
  β = 2.875 = 23/8

  Zeit Registerzugriff neu =  50ps / β = 17.4ps

- Fall 3: α = β = 1

  γ = 100ps / ( 500ps / 1.15 - (2·50ps / β + 2·150ps / α) )
  γ = β

  Zeit ALU-Operation neu = 100ps / γ = 34.78ps

[schneller heißt: kürzere Zeit]

> Speicherzugriff: S = 500ps / (2·150ps / S₁ + 200ps) =! 1.15
> - S₁ = 2·150ps / (500ps / 1.15 - 200ps) = 1.2777… = 1 + 2/9 + 5/90 = 115/90
> 
> Registerzugriff: S = 500ps / (400ps + 2·50ps / S₂) =! 1.15
> - S₂ = 2·50ps / (500ps / 1.15 - 400ps) = 2.875 = 3 - 1/8 = 23/8
> 
> ALU-Operation: S = 500ps / (400ps + 100ps / S₃) =! 1.15
> - S₃ = 100ps / (500ps / 1.15 - 400ps) = S₂ 

## Aufgabe 2

a)
Durschnittslaufzeit der Programme berechnen.

( ∑ $t_Pi$ )/n = ($t_P1$ + $t_P2$ + $t_P3$ + $t_P4$ ) / 4  =  sum( liste ) / len( liste )

Computer 1: $\bar{t}$ = 67.25
Computer 2: $\bar{t}$ = 88.25

Computer 1 gewinnt, da weniger Zeit pro Progamm nötig!

b)
Häufigkeit der Programme berücksichtigen.

Fehler: ~~( ∑ $p_P(i)$ · $t_Pi$ ) / n = ( $p_P(1)$ · $t_P1$ + … $p_P(4)$ · $t_P4$ ) / 4~~
Richtig: ∑ $p_P(i)$ · $t_Pi$ = $p_P(1)$ · $t_P1$ + … $p_P(4)$ · $t_P4$

Computer 1: $\bar{t}_w$ = 46.16
Computer 2: $\bar{t}_w$ = 23.5

Computer 2 gewinnt!

c) Warum oder wie lässt sich das (der Unterschied) erklären?

- Der Unterschied kommt dadurch zustande, dass die Programme, in denen C1 besser ist, so selten gebraucht werden, dass C2 insgesamt in der Nutzungszeit alle Programmaufrufe schneller ausführt.

Möglichkeit:
Programm 1: Browser fürs Internet
Programm 2: Computerspiele (3D-Grafik-Berechnungen)
Programm 3: numerische Berechnungen als Uni-Hausaufgaben
Programm 4: MARS-Simulator oder andere seltene GUI-Anwendungen

=> Computer 2 wäre ein Gaming-PC

=> andere Möglichkeit: Server-Computer
Programm 1: Verschlüsselung und Sicherheit
Programm 2: Nutzeranfrangen bearbeiten
Programm 3: Konsolenprogramme
Programm 4: grafische Anwendungen

## Aufgabe 3

Wir vergleichen 3 Computer anhand der Speedups zwischen Programmen.

Referenzmaschine heißt, als Maßstab zum Vergleich anderer Maschinen (Computer).

Wir bilden die Verhältnisse zwischen den Ausführungszeiten. Referenzmaschine soll Computer 2 sein.

$S_C1$ = $t_C1$ / $t_C2$  # elementweise Division!
$S_C2$ = $t_C2$ / $t_C2$ = 1
$S_C3$ = $t_C3$ / $t_C2$

Produkt = $S_P1$ · $S_P2$ · $S_P3$   ( numpy.prod() )
geometrische Mittel = n√Produkt   (in diesem Fall n = 3)

3√( x )  mit numpy.cbrt() (cube root) berechnen

geometrisches Mittel = numpy.cbrt( numpy.prod( $S_Ci$ ) )

Computer 1: geom. Mittel = 1.918
Computer 2: geom. Mittel = 1
Computer 3: geom. Mittel = 1.32

Schneller ist Computer mit geringsten geometrischen Mittel. Das kleinste geometrische Mittel hat der Computer, der im Vergleich zu C2 am schnellsten. (Je schneller der Computer, desto kleiner ist der Speedup von C2)

Problem:
verschiedene Speedups können wir nicht vergleichen. Mehrere Speedupwerte verhalten wie Vektoren.

Der gleiche Speedup kann in der menschlichen Wahrnehmung einen riesigen Unterschied bedeuten.
Beispiel: S = 3
Fall 1: Programm 1 von Computer 1 braucht 100ms und Programm 1 von Computer 2 braucht dann 300ms
Fall 2: Programm 2 von Computer 1 braucht 3 Tage und Programm 2 von Computer 2 braucht 1 Tag.

=> geometrische Mittel hat hier keine richtige Bedeutung


### Python-Berechnung

```
$ python3
Python 3.8.10 (default, Nov 14 2022, 12:59:47) 
[GCC 9.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> 2 * 150 / ( 500 / 1.15 - 200 )
1.2777777777777777
>>> 2 * 50 / ( 500 / 1.15 - 400 )
2.874999999999999
>>> 115 / 180 * 150
95.83333333333333
>>> 23 / 8 / 2 * 50
71.875
>>> (23 / 8) / 2 * 50
71.875
>>> 50 / (23 / 8)
17.391304347826086
>>> 100 / (23/8)
34.78260869565217
>>> 150 / ( 115/90 )
117.3913043478261
>>> t_C1 = [ 23, 55, 82, 109 ]
>>> t_C2 = [ 16, 21, 127, 189 ]
>>> import numpy
>>> numpy.mean( t_C1 )
67.25
>>> numpy.mean( t_C2 )
88.25
>>> w = [ 0.31, 0.66, 0.02, 0.01 ]
>>> numpy.dot( w, t_C1 )
46.16000000000001
>>> numpy.dot( w, t_C2 )
23.25
>>> numpy.dot( w, t_C1 ) / 4
11.540000000000003
>>> numpy.dot( w, t_C2 ) / 4
5.8125
>>> exit()
elmar@linux:~$ python3
Python 3.8.10 (default, Nov 14 2022, 12:59:47) 
[GCC 9.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> t_C1 = [ 16, 60, 50 ]
>>> t_C2 = [ 5, 17, 80 ]
>>> t_C3 = [ 25 ] * 3
>>> import numpy
>>> t_C1 = numpy.array( t_C1 )
>>> t_C2 = numpy.array( t_C2 )
>>> t_C3 = numpy.array( t_C3 )
>>> S_C1 = t_C1 / t_C2
>>> S_C2 = t_C2 / t_C2
>>> S_C3 = t_C3 / t_C2
>>> print(S_C1)
[3.2        3.52941176 0.625     ]
>>> print(S_C2)
[1. 1. 1.]
>>> print(S_C3)
[5.         1.47058824 0.3125    ]
>>> numpy.cbrt( numpy.prod( S_C1 ) )
1.9182745937205048
>>> numpy.cbrt( numpy.prod( S_C2 ) )
1.0
>>> numpy.cbrt( numpy.prod( S_C3 ) )
1.319583989972501 
```

## Aufgabe 4

Wir haben 2 engere Kandidaten für die Wahl eine Computer-Systems.

Dieses Computer-System soll P1 und P2 ausführen, wobei P1 doppelt so häufig ausgeführt wird.

Der schneller Computer soll diese Programm-Kombination in einer kürzeren Zeit ausführen.

Zeit für ein Computer-System: Ausführungsdauer = 2 · $t_P1$ + 1 · $t_P2$

Jedes Programm hat eine feste Anzahl an Befehlen.
Dauer eines Programms = Anzahl an Befehlen / Taktfrequenz = Anzahl an Befehlen / (Befehle / Sekunde)

$t_P1$ = Befehle von P1 / ( Taktfrequenz )
$t_P2$ = Befehle von P2 / ( Taktfrequenz )

GHz = 10⁹ (Milliarden Befehle pro Sekunde)

System C1:
$t_P1$ = 8 · 10⁹ / ( 2 · 10⁹ ) = 4s
$t_P2$ = 6 · 10⁹ / ( 2 · 10⁹ ) = 3s
Ausführungsdauer = 2·4s + 3s = 11s

System C2:
$t_P1$ = 11 · 10⁹ / ( 2.5 · 10⁹ ) = 4.4s
$t_P2$ = 10 · 10⁹ / ( 2.5 · 10⁹ ) = 4s
Ausführungsdauer = 2·4.4s + 4s = 12.8s


System 1 führt die Programmme schneller aus und wäre nach dem Schnelligkeits-Kriterium besser geeignet.

## Aufgabe 5

Verschiedene Zeitdauern (Längen) verschiedener Befehle.
Wir wollen (ausschließlich) Speicherbefehle schneller machen.

gegeben: wie viele Befehle in unseren Programmen sind Speicherbefehle? α = 80% = 0.8

Die Frage ist natürlich, wie viel müssen wir die Speicherbefehle optimieren?

Die Befehle werden jetzt aufgeteilt
$T_\text{vor Optimierung}$ = (1 - α) · T   +   α · T = T
$T_\text{nach Optimierung}$ = (1 - α) · T   +   α · T / $S_α$

S = $f_\text{nach Optimierung}$ / $f_\text{vor Optimierung}$ = $T_\text{vor Optimierung}$ / $T_\text{nach Optimierung}$

Es soll S = 3 oder S = 5 überprüft werden. Wir wollen gucken, ob es überhaupt möglich ist.

Wie groß ist $S_α$ ? Betrachtung für S = 3, S = 5

Lösung:

S = T / ( (1 - α) · T   +   α · T / $S_α$ )  =   1 / ( (1 - α)   +   α / $S_α$ )

$S_α$ ? Umstellen

$S_α$ = α / (1 / S - (1 - α))

Fall 1: S = 3
$S_α$ = 0.8  / (1 / 3 - 0.2 ) = (4/5) / ( 1/3 - 1/5 ) = (12/15) / ( 2/15 ) = 12/2 = 6

=> hoher Speedup der Speicherbefehle nötig

Fall 2: S = 5

$S_α$ = α / (1 / S - (1 - α))
$S_α$ = 0.8 / ( 1 / 5 - 0.2 )  =  0.8 / 0  !!
Durch 0 zu teilen ist nicht definiert!
d.h. es gibt kein $S_α$

Grenzwertbetrachtung: $\lim\limits_{S → 5}$ => $\lim\limits_{S_α → ∞}$
Unendlich bedeutet, dass Speicherzugriff 0s benötigen.

was wäre denn, wenn wir sogar S > 5 wollen?
Dann würde rauskommen, dass $S_α$ < 0 . Speicherzugriffe führen in die Zeit zurück!! Geht nicht.



