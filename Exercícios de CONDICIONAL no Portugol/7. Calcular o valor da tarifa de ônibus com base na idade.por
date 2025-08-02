programa
{
	funcao inicio()
	{
		inteiro idade
		real tarifa
		escreva("Digite a idade da pessoa para calcular a tarifa do ônibus: ")
		leia(idade) 
		se (idade < 6) 
		{
			tarifa = 0.0 
			escreva("Idade: " + idade + " anos. Tarifa: GRÁTIS (Criança).")
		}
		senao se (idade >= 6 e idade <= 12) 
		{
			tarifa = 2.00 
			escreva("Idade: " + idade + " anos. Tarifa: R$ " + tarifa + " (Meia Tarifa).")
		}
		senao se (idade >= 65) 
		{
			tarifa = 0.0
			escreva("Idade: " + idade + " anos. Tarifa: GRÁTIS (Idoso).")
		}
		senao 
			tarifa = 4.00 
			escreva("Idade: " + idade + " anos. Tarifa: R$ " + tarifa + " (Tarifa Padrão).")
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