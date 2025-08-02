programa
{
	funcao inicio()
	{
		real frequencia
		inteiro trabalhosFeitos
		escreva("Digite a frequência do aluno (em percentual, ex: 100.0 para 100%): ")
		leia(frequencia)
		escreva("Quantos trabalhos o aluno fez (de 0 a 5)? ")
		leia(trabalhosFeitos)
		se ((frequencia == 100.0) e (trabalhosFeitos == 5)) 
		{
			escreva("\nO aluno tem 100% de frequência E fez todos os 5 trabalhos!\n")
		}
		senao
		{
			escreva("\nO aluno NÃO atende a ambas as condições (100% de frequência E 5 trabalhos feitos).\n")
			se (frequencia != 100.0) 
			{
				escreva("- Frequência não é 100% (Frequência atual: " + frequencia + "%).\n")
			}
			se (trabalhosFeitos != 5) 
		
				escreva("- Não fez todos os 5 trabalhos (Trabalhos feitos: " + trabalhosFeitos + ").\n")
			}
		}
	}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 74; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */