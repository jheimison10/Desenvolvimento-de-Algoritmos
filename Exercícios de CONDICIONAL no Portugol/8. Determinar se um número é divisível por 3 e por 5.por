programa
{
	funcao inicio()
	{
		inteiro numero
		escreva("Digite um número inteiro: ")
		leia(numero) 
		se ((numero % 3 == 0) e (numero % 5 == 0)) 
		{
			escreva("O número " + numero + " é divisível por 3 E por 5.")
		}
		senao 
		{
			escreva("O número " + numero + " NÃO é divisível por 3 e por 5 simultaneamente.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */