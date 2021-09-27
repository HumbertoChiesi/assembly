
addi $t0, $zero, 268500992	# t0 = 268500992 (endereco de inicio da memoria de dados)
addi $t1, $zero, 2		##colocando ultimo numero do meu ra em t1 para somar com o penultimo depois
addi $t1, $t1, 8      		# somando os 2 ultimos numeros do meu RA 8+2
sw $t1, 12($t0)			# Armazena o valor de t1 na quarta posicao da memoria de dados
