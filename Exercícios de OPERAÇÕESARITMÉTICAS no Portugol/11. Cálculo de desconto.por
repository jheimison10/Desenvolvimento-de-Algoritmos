programa
{
	funcao inicio()
	{
		real valorProduto, porcentagemDesconto, valorFinal 
          escreva("Valor do produto: R$ ") 
		leia(valorProduto)
		escreva("Porcentagem de desconto (ex: 10 para 10%): ")
		leia(porcentagemDesconto)
		valorFinal = valorProduto * (1 - (porcentagemDesconto / 100))
          escreva("\nValor Final com Desconto: R$ ", valorFinal)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 309; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */