#Matheus Madureira Fortunato RA00275130 Humberto Chiesi Neto RA 00277882
li $t0, 12 #valor qualquer sendo armazenado em t0
li $t1, 15 #valor qualquer armazenado em t1

slt $t3, $t1, $t0 #verificando se t1 eh menor do que t0, caso isso seja verdade, t3 armazenara 1

beq $t3, 1, primeiro_maior #verificando se t3 armazenou 1 (t1<t0), caso seja verdade a execucao vai para a linha primeiro_maior
la $t5, ($t1) #caso t3 seja diferente de 1 (t0<t1), o t1 sera armazenado em t5
j fim #pula para o final do programa, para evitar que t0 seja armazenado em t5, ou seja, o bloco primeiro_maior seja executado



primeiro_maior: #so entra dentro desse bloco se (t1<t0)
add $t5, $zero, $t0 #t0 que eh o maior esta sendo armazenado em t5

fim: #aqui representa o jump que termina a execucao do programa sem alterar o valor t5 novamente, caso nao existisse.
