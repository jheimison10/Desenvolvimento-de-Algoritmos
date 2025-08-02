programa
{
	funcao inicio()
	{
		inteiro numero
		escreva("Digite um número: ")
		leia(numero) 
		se (numero > 0) 
		{
			escreva("O número " + numero + " é POSITIVO.")
		}
		senao se (numero < 0) 
		{
			escreva("O número " + numero + " é NEGATIVO.")
		}
		senao
		{
			escreva("O número " + numero + " é NULO (ZERO).")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 329; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */