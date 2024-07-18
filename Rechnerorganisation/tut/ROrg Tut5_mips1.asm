.data

char_digit:    .ascii   "5"
char_no_digit: .ascii   "R"
str_squeeze:   .asciiz  "Herea, ita shoulda nota bea possiblea toa seea thea lowercAse lettera: 'A', aaarightaaa?"
table:         .word     1 -2 3 -4 5 -6 7 -8 9 -10 11 -12 13 14
table_len:     .word     14


.text

##########################################
##  Aufgabe 5.2  #########################
##########################################
# int isdigit(int c)
# {
#       if (c >= '0' && c <= '9')
#               return 1;
#       else
#               return 0;
# }
##########################################

isdigit: # $a0 = c
	# '0' = 48, '9' = 57
	li	$t0, 48	# $t0 = 48
	li	$t1, 57 # $t1 = 57
	blt	$a0, $t0, isdigit_else # if (a0 < t0) = (c < '0') -> springe zu isdigit_else
	bgt	$a0, $t1, isdigit_else # if (a0 > t1 ) -> springe zu else
	li	$v0, 1		
	jr	$ra	
isdigit_else:
	li	$v0, 0
	jr	$ra		# return

##########################################
##  Aufgabe 5.3  #########################
##########################################
# void squeeze(char str[], char c)
# {
#       int i,j;
#       j = 0;
#       for (i=0; str[i]!= '\0'; i++) {
#               if (str[i] != c) {
#                       str[j] = str[i];
#                       j++;
#               }
#       }
#       str[j] = '\0';
# }
##########################################

squeeze:  # $a0 = adresse von str, $a1 = c als integer 
	li	$t0, 0	# $t0 = 0 = i
	li	$t1, 0  # $t1 = 0 = j
squeeze_for_start:
	# char von str laden
	add	$t2, $a0, $t0	# adresse berechnen: t2 = a0 + t0 = str + i	
	lb	$t2,0($t2)	# t2 = Mem[t2] = str[i]
	beq	$t2, $zero, squeeze_for_end
	# if (str[i] == c) -> springe zu if_end
	beq	$t2, $a1, squeeze_if_end
	# str[j] = str[i]: 1.Zieladresse berechnen (str[j]) 2. in adresse laden
	add	$t3, $a0, $t1
	sb	$t2, 0($t3)
	addi	$t1, $t1, 1	# j++
squeeze_if_end:
	addi	$t0, $t0, 1	# i++
	j	squeeze_for_start
squeeze_for_end:
	# str[j] = '\0'
	add	$t2, $a0, $t1
	sb	$zero, 0($t2)
	jr   $ra                 # return

##########################################
##  Aufgabe 5.4  #########################
##########################################
# int count_negatives(int table [], int n)
# {
#       int count = 0;
#       int i;
#       for (i=0; i<n; i++) {
#               if( table[i] < 0) {
#                       count ++;
#               }
#       }
#       return count;
# }
##########################################

count_negatives:
	jr   $ra                    # return (count in $v0)

##########################################
##  Aufgabe 5.5  #########################
##########################################
# run-length encoding
# int rle(char *str_in, char *buf_out)
# 
# for implementation see Aufgabenblatt 5
##########################################

.data

str_test_input: .asciiz "BBBBZZABB"

.text

rle:
	jr $ra

##########################################
##  Main  ################################
##########################################
.data

str_cmd_start:    .asciiz  "<<start assignment>>\n"
str_cmd_53:       .asciiz  "\nisdigit(\""
str_cmd_53_true:  .asciiz  "\") returned true"
str_cmd_53_false: .asciiz  "\") returned false"
str_cmd_54:       .asciiz  "\n\nchanged value after squeeze:\n"
str_cmd_55:       .asciiz  "\n\nreturn value of count_negatives: "
str_cmd_end:      .asciiz  "\n\n<<end assignment>>\n\n\n"

str_cmd_56:       .asciiz  "(*)assignment 5.5: RLE\n"
str_input:        .asciiz  "input: "
str_return_value: .asciiz  "\nreturn value: "
str_output:       .asciiz  "\noutput data:"

rle_compressed_output_buf: .space 100

.text

.eqv SYS_PUTSTR 4
.eqv SYS_PUTCHAR 11
.eqv SYS_PUTINT 1
.eqv SYS_EXIT 10

.globl main
main:
	li   $v0, SYS_PUTSTR
	la   $a0, str_cmd_start
	syscall
	la   $a0, str_cmd_53
	syscall

##########################################
#### put here input value for isdigit ####
	la   $a0, char_digit
	lb   $a0, 0($a0)
##########################################

	li   $v0, SYS_PUTCHAR
	syscall
	jal  isdigit

	beqz $v0, main_cmd_53_false
	la   $a0, str_cmd_53_true
	j    main_cmd_53

main_cmd_53_false:
	la   $a0, str_cmd_53_false
main_cmd_53:
	li   $v0, SYS_PUTSTR
	syscall

	la   $a0, str_cmd_54
	li   $v0, SYS_PUTSTR
	syscall

##########################################
#### put here input values for squeeze ###
	la   $a0, str_squeeze
	li   $a1, 'a'
##########################################
	jal  squeeze

	la   $a0, str_squeeze
	li   $v0, SYS_PUTSTR
	syscall

	la   $a0, str_cmd_55
	li   $v0, SYS_PUTSTR
	syscall

	la   $a0, table
	la   $a1, table_len
	lw   $a1, 0($a1)
	jal  count_negatives

	move $a0, $v0
	li   $v0, SYS_PUTINT
	syscall

	la   $a0, str_cmd_end
	li   $v0, SYS_PUTSTR
	syscall

##########################################
##  rle test loop ########################
##########################################
	# Eingabezeichenfolge anzeigen:
	la   $a0, str_cmd_56
	syscall
	la $a0, str_input
	syscall
	la $a0, str_test_input
	syscall
	
	# Aufruf der zu testenden Funktion rle:
	la $a0, str_test_input
	la $a1, rle_compressed_output_buf
	jal rle

	# Rueckgabewert anzeigen:
	move $t0, $v0
	li $v0, SYS_PUTSTR
	la $a0, str_return_value
	syscall
	li $v0, SYS_PUTINT
	move $a0, $t0
	syscall

	# Ausgabedaten anzeigen:
	li $v0, SYS_PUTSTR
	la $a0, str_output
	syscall
	
	la $t0, rle_compressed_output_buf
_main_output_loop:
	lb $t1, 0($t0)
	lb $t2, 1($t0)
	or $t3, $t1, $t2
	beqz $t3, _main_output_endloop
	
	li $v0, SYS_PUTCHAR
	li $a0, ' '
	syscall	
	li $a0, '('
	syscall
	li $a0, '\''
	syscall
	move $a0, $t1
	syscall
	li $a0, '\''
	syscall
	li $a0, ','
	syscall
	
	li $v0, SYS_PUTINT
	move $a0, $t2
	syscall
	
	li $v0, SYS_PUTCHAR
	li $a0, ')'
	syscall	
	
	addi $t0, $t0, 2
	j _main_output_loop

_main_output_endloop:
	li $v0, SYS_EXIT
	syscall
