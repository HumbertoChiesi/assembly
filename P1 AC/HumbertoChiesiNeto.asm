#Humberto Chiesi Neto RA00277882

.data 
  prompt:	.asciiz "Qual elemento da sequencia de Fibonacci: "
  message:	.asciiz "\nElemento da sequencia escolhido: "
  
.text
	
#Mostra a mensagem, recebe o input do usuario e coloca em t0	
addi $v0, $zero, 4  	# v0 = 4		
la $a0, prompt		# a0 recebe a mensagem
syscall      			
addi $v0, $zero, 5	# v0 = 5
syscall 
add $t0, $v0, $zero	# t0 = v0

#coloco os dois primeiros elementos da sequencia em t1 e t2
addi $t1, $zero, 1	#t1 = 1
addi $t2, $zero, 1	#t2 = 1
addi $t6, $zero, 2	#t6 = 2

#verifico te o elemnto escolhido foi o primeiro ou segundo da sequencia
slti $t5, $t0, 3 	#if(t0 < 3) t5=1; else t5=0;
beq  $t5, $t1, fim	#if(t5 == 1) go to fim 

loop:
beq $t6, $t0, fim	#if(t6 == t0) go to fim

add $t2, $t2, $t1	#t2 = t2+t1
sub $t1, $t2, $t1	#t1 = t2-t1
addi $t6, $t6, 1	#t6 = t6 + 1
add $t5, $t2, $zero	#t5 = t2 + 0
j loop			#go to loop

fim:
#imprimo o elemento escolhido pelo usuario
addi $v0, $zero, 4 	# v0 = 4
la $a0, message		# a0 recebe a mensagem
syscall
addi $v0, $zero, 1	# v0 = 1
add $a0, $zero, $t5	# a0 = t1
syscall
