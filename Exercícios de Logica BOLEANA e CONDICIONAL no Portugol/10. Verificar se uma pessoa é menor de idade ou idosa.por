programa
{
	funcao inicio()
	{
		inteiro idade
		escreva("Digite a idade da pessoa: ")
		leia(idade)
		se ((idade < 18) ou (idade >= 60)) 
		{
			escreva("\nA pessoa é menor de idade OU é idosa.\n")
			se (idade < 18) 
			{
				escreva("- A pessoa é menor de idade.\n")
			}
			senao se (idade >= 60) 
			{
				escreva("- A pessoa é idosa.\n")
			}
		}
		senao
		{
			escreva("\nA pessoa NÃO é menor de idade NEM idosa (está na faixa etária adulta).\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 46; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */