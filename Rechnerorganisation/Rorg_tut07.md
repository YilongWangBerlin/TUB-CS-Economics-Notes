### Pseudobefehle

li = load immediate = lui + ori

bgt = branch if greater than = slt + bne

Core Instruction (echte Befehle)

add, sll, slt


Register

$zero = $0
$at = $1
$v0 = $2
...

$t0 = $8
$t(x) = $8 + x
$t8 = $24

$s0 = $16 + 0
$s1 = $17 + 1
$s2 = $18 + 2
$s3 = $19 + 3

$s(x) = $16 + x

Opcode-Tabelle (MIPS-Green-Card)

Linker Kasten wichtig:
Mittlere Spalte = R-Typ
Linke Spalte = I-Typ und J-Typ

(Rechte Spalte = Floating-Point)

Mittlerer Kasten: Name des Befehls als Zahl in verschiedener Darstellung

Rechter Kasten: nicht wichtig, nur um ASCII-Zeichen zu übersetzen

J-Typ-Format

Speichern die unteren 28-Bit des Program Counters (aber nicht die obersten 4 Bits!!)

Jeder Befehl ist 32-Bit = 4 Byte groß, d.h. dass jede Befehlsadresse ist durch 4 teilbar. D.h. die letzten beiden Bits = 0 sind.

0x000101011101010101...110100



### 7.2)

jr	$ra   => R-Typ,   Func rs
rs = $ra = 31

> [ 000000, 31 , 0 , 0 , 0 , 8 ]


addi $a0, $a0, 4    => I-Typ (Opcode wird verwendet)
Opcode rt, rs, imm

> [ Opcode = 8 , rt = $a0 = 4, rs = $a0 = 4, 4 ]


### 7.3)

#### warum addieren PC bei BEQ?

Bei BEQ haben wir nur kleine Immediate (16-Bit) zum springen

- BEQ-Befehlsadresse (Beispiel): 
1011 0111 0101 01 [0000 0000 0000 0101] 00
                                                      16-Bit

Addition mit PC erlaubt uns, auch Adressbits überhalb den 18 untersten Bits zu verändern.
Häufig sind Programme groß, sodass häufiger Sprünge vorkommen, in denen die Adressbits über den unteren 18 Bits sich verändern.

- J-Befehlsadresse: 
1011 [00 0000 0000 0000 0000 0000 0101] 00
                                   26-Bit

obere 4 Bits der Befehlsadresse ändern sich in einem Program selten, deshalb reicht es, wenn die Konstante im J-Typ-Befehl bloß die unteren Adressbits ersetzt (ohne Addition).

Falls ein Sprung alle Adressbits verändern können soll: JR-Befehl (Zieladresse ist ein Registerinhalt)


a)
[ bne, … , … , imm = 13 ]

PC = 100 020 + 4 = 100 024 (nächster Befehl)
13 << 2  ==  13 * 4  = 52

Zieladresse = L1 = 52 + PC = 100 076
=> 100 076 (Ergebnis)

b)详细见single cycle ppt p42
[ j ,  imm = 170 012 ]

                   PC[28..31]          
PC = 150 020 + 4  =  [0000] … … … … … … …00 ₂
高4位为0
Zieladresse = L1 = { PC[28..31] , 170 012 << 2 }    // "," bedeutet Bits nebeneinander zu stecken (konkatenieren)

170 012 << 2 == 170 012 * 4 == 680 048

"<< 2" bedeutet einfach nur, dass zwei untere 0-Bits dazukommen

L1 = { 0 , 680 048 }   // oberen 4 Bits sind 0 und haben daher keinen Einfluss auf den Zahlenwert der Adresse
L1 = 680 048


7.4)

1. Schritt: obere 6-Bit (Opcode) anschauen
2. Schritt: welches Format, dann welcher Befehlsname herausfinden
3. Schritt: die Felder aus dem Machinenbefehl ablesen (rs, rt, rd, shamt, imm)
4. Schritt: in richtiger Reihenfolge in den Befehl schreiben (siehe Mips-Greencard bei Core Instructions)

Zeile 1 Befehlsadresse = L1 = 0x1004:

              Opcode    rs      rt       rd      shamt   Func
0x00004020 = [0000 00][00 000][0 0000] [0100 0][000 00][10 0000] ₂

Opcode = 0 => R-Typ-befehl
Func = 10 0000  => 32 => ADD rd, rs, rt
rd = 01000 = $8 = $t0
rs = 00000 = $0 = $zero
rt = 00000 = $0 = $zero

=> L1: ADD $t0, $zero, $zero

Zeile 2 Befehlsadresse = L2 = 0x1008:

              Opcode    rt      rs      imm
0x21080001 = [0010 00][01 000][0 1000][0000 0000 0000 0001] ₂

Opcode = 8 => kein R-Typ => ADDI rt, rs, imm
rt = 01000 = $8 = $t0
rs = 01000 = $8 = $t0
imm = 00…01 = 1

=> L2: ADDI $t0, $t0, 1

Zeile 3 Befehlsadresse = L3 = 0x100C:

               Opcode     imm = 0x401
0x08000401 = [0000 10] [00 0000 0000 0000 0100 0000 0001] _2

Opcode = 2 => kein R-Typ => J  imm

Sprungziel = imm << 2 == 0x1004 == L1 !!

=> L3: J L1