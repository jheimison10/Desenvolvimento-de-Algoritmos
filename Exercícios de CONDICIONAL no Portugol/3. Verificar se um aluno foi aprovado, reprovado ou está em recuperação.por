programa
{
	funcao inicio()
	{
		real nota
		escreva("Digite a nota final do aluno (ex: 6.5): ")
		leia(nota) 
		se (nota >= 7.0) 
		{
			escreva("O aluno está APROVADO!")
		}
		senao se (nota >= 5.0 e nota < 7.0) 
		{
			escreva("O aluno está em RECUPERAÇÃO.")
		}
		senao 
		{
			escreva("O aluno está REPROVADO.")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 325; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */