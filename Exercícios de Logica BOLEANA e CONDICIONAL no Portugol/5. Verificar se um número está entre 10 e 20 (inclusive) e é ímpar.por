programa
{
	funcao inicio()
	{
		inteiro numero
		escreva("Digite um número inteiro: ")
		leia(numero)
		se ((numero >= 10) e (numero <= 20) e (numero % 2 != 0))
		{
			escreva("\nO número " + numero + " está entre 10 e 20 (inclusive) E é ímpar.\n")
		}
		senao
		{
			escreva("\nO número " + numero + " NÃO atende a todas as condições (entre 10 e 20 inclusive, E ímpar).\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 102; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */