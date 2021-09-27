#Matheus Madureira Fortunato RA00275130 Humberto Chiesi Neto RA 00277882
li $t0, 8 #valor de x armazenado em t0
li $t1, 4 #valor de y armazenado em t1
li $t2, 2 #valor de i armazenado em t2

loop:#representa o ponto em que a execucao voltara, caso t2 seja maior que 0
slt $t3, , $zero, $t2 #verificando se i > 0, caso isso seja verdadeiro, t3 recebe 1
beq $t3, 0, fora #se t3 = 0 (i=<0) sai do bloco loop para fora
addi $t1, $t1, 2 #somando 2 em y(armazenado em t1)
subi $t2, $t2, 1 #subtraindo 1 de i(armazenado em t2)
j loop

fora:
add $t5, $t0, $t1 #Se o i<= 0, entao sera somado ao z (armazenado em t5) x(armazenado em t0) e y(armazenado em t1)
