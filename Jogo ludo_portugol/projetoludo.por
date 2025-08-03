programa
{
	inclua biblioteca Graficos
	inclua biblioteca Util --> u
	

	
	funcao inicio()
	{
	inteiro dado, entrada
	escreva("Pressione Para Jogar o Dado:\n")
	dado = u.sorteia(1,6)
		escreva("Numero que saiu foi: \n", dado)
		se (dado == 6) {
		escreva("\n Parabéns você tirou 6 entre na trilha:\n")
		enquanto (dado == 6){
		dado = u.sorteia(1,6)
		escreva("\nNumero que saiu foi: ", dado, " Jogue Novamente")
		se (dado !=6){
			pare
		}
		
		
		}
		
		}
		escreva("\nPasse a Vez")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */