#Matheus Madureira Fortunato RA00275130 Humberto Chiesi Neto RA 00277882
li $t0, 5 #dado numero armazenado em t0
li $t5, 1 #o fatorial do menor natural = 1, logo 1 foi armazenado como resultado

bne $t0, 0, loop #se o dado numero nao for 0 sera executado o bloco loop 
j fim #pula o bloco do loop caso t0 seja igual a 0

loop: #bloco que representa o codigo para ficar em loop
mul $t5, $t5, $t0 #multiplica-se o resultado parcial do fatorial, que comeca em 1 (elemento neutro da multiplicacao e o menor resultado possivel), pelo dado numero e suas parcelas fatoriais
subi $t0, $t0, 1 #calcula-se as parcelas fatorias do dado numero
bne $t0, 1, loop #quando a parcela fatorial for igual a 1, significa o fim do calculo fatorial (elemento neutro da multiplicacao)

fim: #bloco que representa o fim do programa
