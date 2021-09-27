
addi $t0, $zero, 72    # t0 = 8
add $a0, $zero, $t0   # a0 = t0 = 8

jal ehpar             	# JAL (jump and link) chama a funcao "ehpar"
beq $v0, 1, ehimpar   	#Compara se o resto da divisao obtido pela funcao eh 1 ou 0, se for 1 pula para ehimpar
addi $t5, $zero, 1   	#atribui 1 a t5 pois o valor eh par
j fim		      	# Pula pro label "fim"

# ====================================== Funcao ================================================
ehpar:
    rem $v0, $a0, 2   	# v0 = resto de a0/2
    jr $ra              # Retorna da funcao
# =============================================================================================

ehimpar:
addi $t5, $zero, 0	#atribui 0 a t5 pois o valor eh impar

fim: