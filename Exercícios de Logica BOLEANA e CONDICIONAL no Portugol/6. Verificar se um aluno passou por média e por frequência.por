programa
{
	funcao inicio()
	{
		real media
		real frequencia
		escreva("Digite a média final do aluno: ")
		leia(media)
		escreva("Digite a frequência do aluno (em percentual, ex: 75.5 para 75.5%): ")
		leia(frequencia)
		se ((media >= 7.0) e (frequencia >= 75.0)) 
		{
			escreva("\nO aluno foi APROVADO por média e por frequência!\n")
		}
		senao
		{
			escreva("\nO aluno foi REPROVADO.\n")
			se (media < 7.0) 
			{
				escreva("- Reprovado por média (Média: " + media + ").\n")
			}
			se (frequencia < 75.0) 
			{
				escreva("- Reprovado por frequência (Frequência: " + frequencia + "%).\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 61; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */