programa
{
	funcao inicio()
	{
		inteiro numero
		escreva("Digite um número: ")
		leia(numero)
		se ((numero % 2 == 0) e (numero > 10) e (numero % 5 == 0)) 
		{
			escreva(numero + " é PAR, MAIOR QUE 10 E MÚLTIPLO DE 5.\n")
		}
		senao
		{
			escreva(numero + " NÃO atende a todas as condições (par, maior que 10, múltiplo de 5).\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 94; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */