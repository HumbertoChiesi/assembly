addi $t5, $zero, 268500992	# t0 = 268500992 (endereco de inicio da memoria de dados)

#atribuo os 4 valores nos registradores t0-t3 para simular um vetor com 4 elementos
li $t0, 8		#t0 = 8		
li $t1, 3		#t1 = 3
li $t2, 1		#t2 = 1
li $t3, 3		#t3 = 3

li $s0, 0		#s0 = 0, variavel usada pra verificar se a lista esta ordenada ou nao	

#copio os 4 valores na memoria pra facilitar a aplicacao do programa 
sw $t0, 0($t5)		
sw $t1, 4($t5)
sw $t2, 8($t5)
sw $t3, 12($t5)

#loop que vai percorrer os 4 valores ate que estejam ordenados
loop:
beq $s0, 1, parar	#if(s1 == 0) go to parar, se s0 = 1 a lista esta ordenada e acaba o loop

li $s0, 1		#s0 = 1

#comparo 2 valores e mudo a posicao se necessario para ordenar os numeros
lb $a0, 0($t5)		#a0 = primeiro numero do "vetor"
lb $a1, 4($t5)		#a1 = segundo numero do "vetor"
jal ehmaior		#chama a funcao ehmaior, que verifica se a0 < a1, muda os valores de a0 com o de a1 se a0 > a1
			# e atribui 1 a v0 se a0 < a1 e 0 se a0 > a1
beq $v0, 1, pular	#if(v0 == 1) go to pular
sw $a0, 0($t5)		#0(t5) = a0
sw $a1, 4($t5)		#4(t5) = a1
li $s0, 0		#s0 = 0, ocorreu uma mudanca e entao o vetor pode nao estar ordenado ainda, ocorrera pelo menos mais um loop
pular:

lb $a0, 4($t5)		#a0 = segundo numero do "vetor"
lb $a1, 8($t5)		#a1 = terceiro numero do "vetor"
jal ehmaior		#chama a funcao ehmaior
beq $v0, 1, pular1	#if(v0 == 1) go to pular1
sw $a0, 4($t5)		#4(t5) = a0
sw $a1, 8($t5)		#8(t5) = a1
li $s0, 0		#s0 = 0
pular1:

lb $a0, 8($t5)		#a0 = terceiro numero do "vetor"
lb $a1, 12($t5)		#a1 = quarto numero do "vetor"
jal ehmaior		#chama a funcao ehmaior
beq $v0, 1, pular2	#if(v0 == 1) go to pular2
sw $a0, 8($t5)		#8(t5) = a0
sw $a1, 12($t5)		#12(t5) = a1
li $s0, 0		#s0 = 0
pular2:

j loop			#go to loop

parar:

#atribuo os valores ordenados na memoria para os registradores t0 - t3
lw $t0, 0($t5)		#t0 = 0(t5)
lw $t1, 4($t5)		#t1 = 4(t5)
lw $t2, 8($t5)		#t2 = 8(t5)
lw $t3, 12($t5)		#t3 = 12(t5)

j fim			#go to fim

# ====================================== Funcao ================================================
ehmaior:
    slt $v0, $a0, $a1		#if(a0<a1) v0 = 1; else v0 = 0
    beq $v0, 1, pularf		#if(v0 == 1) go to pularf
    beq $a0, $a1, pularIgual	#if(a0 == a1) go to pularIgual
    
    #mudando os valores de a0 com a1
    add $a3, $zero, $a0		#a3 = 0	
    li $a0, 0			#a0 = 0
    add $a0, $zero, $a1		#a0 = a1
    li $a1, 0			#a1 = 0
    add $a1, $zero, $a3		#a1 = a3
    li $a3, 0			#a3 = 0
    
    j pularf			#go to pularf, para nao passar pelo bloco pularIgual que muda o valor de v0 se a1 = a0
    
    pularIgual:
    li $v0, 1			#v0 = 1
    pularf:
    
    jr $ra             		#Retorna da funcao
# =============================================================================================

fim:
