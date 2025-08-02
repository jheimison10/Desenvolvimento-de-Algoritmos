programa
{
	funcao inicio()
	{
		inteiro numero1
		inteiro numero2
		escreva("Digite o primeiro número: ")
		leia(numero1)
		escreva("Digite o segundo número: ")
		leia(numero2)
		se ((numero1 == numero2) e (numero1 > 10) e (numero2 > 10))
		{
			escreva("\nOs números " + numero1 + " e " + numero2 + " são IGUAIS E AMBOS são MAIORES QUE 10.\n")
		}
		senao
		{
			escreva("\nOs números " + numero1 + " e " + numero2 + " NÃO atendem a ambas as condições (iguais E ambos maiores que 10).\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 66; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */