programa
{
	funcao inicio()
	{
		inteiro ano
		escreva("Digite um ano para verificar: ")
		leia(ano)
		se (ano % 400 == 0) 
		{
			escreva(ano + " é bissexto E é divisível por 100.\n")
		}
		
		senao se (ano % 100 == 0) 
		{
			escreva(ano + " NÃO é bissexto, mas É divisível por 100.\n")
		}
		senao se (ano % 4 == 0)
		{
			escreva(ano + " é bissexto, mas NÃO é divisível por 100.\n")
		}
		senao 
		{
			escreva(ano + " NÃO é bissexto E NÃO é divisível por 100.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 100; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */