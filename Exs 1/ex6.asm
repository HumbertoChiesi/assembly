#Matheus Madureira Fortunato RA00275130 Humberto Chiesi Neto RA 00277882
li $t0, 0 #dado numero armazenado em t0
li $t1, 4 #dado numero armazenado em t1
li $t5, 0 #valor 0 eh armazenado em t5, pois caso um dos dois termos seja 0 esse sera o resultado esperado e assim nao havera problemas ao executar as outras instrucoes

beq $t0, 0, fim #verificando se a primeira parcela eh 0, caso afirmativo, pula para final, pois o resultado de uma multiplicacao por 0 ja esta armazenado em t5
beq $t1, 0, fim #verificando se a segunda parcela eh 0, caso afirmativo, pula para final, pois o resultado de uma multiplicacao por 0 ja esta armazenado em t5

slt $t2, $t0, $t1 #verificando qual dos dois numeros eh o maior, para fazer com que ocorre menos iteracoes no loop.

beq $t2, 1, loop_maior #verificando se t2 = 1, t1>t0, nesse caso havera um pulo para o bloco de codigo loop_maior
loop_menor: #bloco de codigo do loop que sera executado quando t1<t0
add $t5, $t5, $t0 #sera somado aos resultados anteriores(sendo o inicio 0, elemento neutro da soma) o maior valor, nesse caso t0
addi $t3, $t3, 1 #contagem de quantas somas ja foram feitas
bne $t3, $t1, loop_menor #verificando quantas operacoes de soma ja foram feitas, se esse numero de somas for igual a menor numero da multiplicacao significa que a multiplicacao acabou
j fim #pulando para o final para evitar a execucao do bloco de codigo loop_maior

loop_maior: #bloco de codigo que sera executado quando t1>t0
add $t5, $t5, $t1 #sera somado aos resultados anteriores(sendo o inicio 0, elemento neutro da soma) o maior valor, nesse caso t1
addi $t3, $t3, 1 #contagem de quantas somas ja foram feitas
bne $t3, $t0, loop_maior  #verificando quantas operacoes de soma ja foram feitas, se esse numero de somas for igual a menor numero da multiplicacao significa que a multiplicacao acabou

fim: #bloco que representa pula a execucao do bloco loop_maior
