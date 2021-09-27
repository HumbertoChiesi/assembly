#Matheus Madureira Fortunato RA00275130 Humberto Chiesi Neto RA 00277882
li $t0, 32 #dado um numero que esta sendo armazenado em t0
li $t1, 2 #dado um numero que esta sendo armazenado em t1

beq $t1, 0, zero #verificando se t1 nao eh igual a 0 para evitar a tentativa de divisao por 0, caos t1 seja igual a zero, sera pulado para o bloco zero

div $t2, $t0, $t1 #dividindo t0 por t1 
mul $t3, $t2, $t1 #multiplicando t1 (divisor) pelo quociente da divisao
sub $t5, $t0, $t3 #subtraindo do dividendo a multiplicacao do divisor pelo quociente, que tera como resultado o resto
j fim #pulando para o fim, para evitar a execucao do bloco zero

zero: #bloco que sera executado quando o divisor for igual a 0
li $t5, -1 #sera colocado -1 como valor do resto quando o divisor for igual a 0

fim: #bloco que representa o fim da execucao do programa
