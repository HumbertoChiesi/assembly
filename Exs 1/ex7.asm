#Matheus Madureira Fortunato RA00275130 Humberto Chiesi Neto RA 00277882
li $t0, 4 #dado um numero aramzenado em t0
div $t1, $t0, 2 #pegando a metade desse numero (a raiz de um numero pode ser igual a no maximo a metade do proprio numero)
addi $t1, $t1, 1 #somando 1 na metade do numero para que o loop nao pare antes de atingir a metade 
li $t2, 0 #primeiro valor inteiro que ao ser elevado ao quadrado gera um quadrado perfeito 

loop: #bloco do loop para tentar achar o quadrado perfeito 
mul $t3, $t2, $t2 #pegando o numero salvo em t2 (inicialmente 1) e elevando ao quadrado e salvando-o em t3
beq $t0, $t3, sol #comparando t3 (numero elevado ao quadrado) com t0 (numero que tem o seu quadrado perfeito procurado), t3 seja o quadrado perfeito ocorrera um pulo para o bloco sol:
addi $t2, $t2, 1 #soma-se 1 ao numero salvo em t2, ou seja, muda-se o numero que sera elevado ao quadrado (quadrado perfeito)
bne $t2, $t1, loop #eh comparado o valor que sera elevado ao quadrado, caso ele ainda nao seja igual a metade, significa que ainda ha mais tentativas para achar o quadrado perfeito, logo havera um pulo para o bloco loop
		   #caso ele seja igual a metade, significa que nao ha quadrado perfeito
li $t5, 0 #sera colocado o valor 0 em t5 caso o numero dado nao tenha quadrado perfeito
j fim #pulado para o fim para evitar a execucao do bloco sol

sol: #bloco solucao que sera executado quando o numero tem um quadrado perfeito
add $t5, $zero, 1 # colocando o valor do quadrado perfeito em t5

fim: #bloco que representa o fim do programa
