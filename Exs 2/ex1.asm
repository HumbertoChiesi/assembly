

.data 
  prompt:	.asciiz "Digite um valor de radiacao:"
  
.text

#apresenta a mensagem "digite um valor de radicao"
addi $v0, $zero, 4  	# v0 = 4		
la $a0, prompt		# a0 recebe a mensagem
syscall 

#recebe o valor de radicao digitado pelo usuario
addi $v0, $zero, 5	# v0 = 5
syscall

add $t0, $v0, $zero	# coloco o valor recebido em t0
beq $t0, 100, tipo3	#se o valor digitado for = 100 pula para o bloco tipo 3
slti $s0, $t0, 51	#se o valor digitado estiver entre 1 e 50, s0 = 1 senao s0 = 0
beq $s0, 1, tipo1	#se s0 = 1 pula para o bloco tipo 3
addi $t5, $zero, 2	#se nao for nem tipo 1 nem tipo 3 sera tipo 2, entao armazeno 2 em t5
j fim			#pulo para o fim do programa

tipo1:
addi $t5, $zero, 1	#armazeno 1 em t5 pois o valor de radicao digitado eh do tipo 1
j fim			#pulo para o fim do programa

tipo3:
addi $t5, $zero, 3	#armazeno 3 em t5 pois o valor de radicao digitado eh do tipo 3

fim:
