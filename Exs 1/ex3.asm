#Matheus Madureira Fortunato RA00275130 Humberto Chiesi Neto RA 00277882
li $t0, 11 #colocando um valor qualquer de x em t0
li $t1, 10 #coloando um valor qualquer de y em t1

beq $t0, $t1, iguais #ccomparacao que verifica se t0 e t1 (x e y) sao iguais, em caso afirmativo, pulara para iguais
li $t5, 3 #caso os numeros de x e y nao sejam iguais, sera armazenado em t5 (z) o valor 3
j fim #pulo para o final do programa, para evitar que o bloco iguais seja executado

iguais: #bloco que sera executado quando x e y sejam iguais
li $t5, 2 #armazenado 2 em t5 (z) quando os numeros de x e y sao iguais

fim: #pulo para o fim
