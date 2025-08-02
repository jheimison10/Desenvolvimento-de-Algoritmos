programa
{
	funcao inicio()
	{
		inteiro numero1, numero2
		escreva("Digite o primeiro número: ")
		leia(numero1) 
		escreva("Digite o segundo número: ")
		leia(numero2) 
		se (numero1 > numero2) 
		{
			escreva("O PRIMEIRO número (" + numero1 + ") é o MAIOR.")
		}
		senao se (numero2 > numero1)
		{
			escreva("O SEGUNDO número (" + numero2 + ") é o MAIOR.")
		}
		senao
		{
			escreva("Os números são IGUAIS (" + numero1 + " = " + numero2 + ").")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 30; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */