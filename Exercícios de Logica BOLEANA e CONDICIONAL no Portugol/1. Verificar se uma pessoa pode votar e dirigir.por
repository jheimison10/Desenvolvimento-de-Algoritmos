programa
{
	funcao inicio()
	{
		inteiro idade
		escreva("Digite a idade da pessoa: ")
		leia(idade)
		escreva("\n--- Resultados ---\n")
		se (idade >= 16 e idade >= 18)  
		{
			escreva("A pessoa com " + idade + " anos PODE VOTAR e PODE DIRIGIR.")
		}
		senao se (idade >= 16 e idade < 18)
		{
			escreva("A pessoa com " + idade + " anos PODE VOTAR, mas NÃO PODE DIRIGIR.")
		}
		senao
		{
			escreva("A pessoa com " + idade + " anos NÃO PODE VOTAR e NÃO PODE DIRIGIR.")
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