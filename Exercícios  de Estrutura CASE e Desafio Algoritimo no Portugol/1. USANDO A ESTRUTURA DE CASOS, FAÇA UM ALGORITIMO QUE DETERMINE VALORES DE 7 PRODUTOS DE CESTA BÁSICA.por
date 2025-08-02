programa
{
	funcao inicio()
	{
		real valorArroz, valorFeijao, valorOleo, valorAcucar, valorCafe, valorSal, valorMacarrao
		inteiro opcaoProduto
		escreva("--- Cadastro de Valores da Cesta Básica ---\n")
		escreva("Informe o valor do ARROZ: R$ ")
		leia(valorArroz)
		escreva("Informe o valor do FEIJAO: R$ ")
		leia(valorFeijao)
		escreva("Informe o valor do OLEO: R$ ")
		leia(valorOleo)
		escreva("Informe o valor do ACUCAR: R$ ")
		leia(valorAcucar)
		escreva("Informe o valor do CAFE: R$ ")
		leia(valorCafe)
		escreva("Informe o valor do SAL: R$ ")
		leia(valorSal)
		escreva("Informe o valor do MACARRAO: R$ ")
		leia(valorMacarrao)
		escreva("\n--- Consulta de Valores ---\n")
		escreva("Qual produto você gostaria de consultar o valor?\n")
		escreva("1 - Arroz\n")
		escreva("2 - Feijão\n")
		escreva("3 - Óleo\n")
		escreva("4 - Açúcar\n")
		escreva("5 - Café\n")
		escreva("6 - Sal\n")
		escreva("7 - Macarrão\n")
		escreva("Digite o número correspondente ao produto: ")
		leia(opcaoProduto)
		escolha (opcaoProduto)
		{
			caso 1: 
				escreva("\nO valor do ARROZ é: R$ " + valorArroz + "\n")
				pare 
			caso 2: 
				escreva("\nO valor do FEIJAO é: R$ " + valorFeijao + "\n")
				pare
			caso 3: 
				escreva("\nO valor do OLEO é: R$ " + valorOleo + "\n")
				pare
			caso 4: 
				escreva("\nO valor do ACUCAR é: R$ " + valorAcucar + "\n")
				pare
			caso 5: 
				escreva("\nO valor do CAFE é: R$ " + valorCafe + "\n")
				pare
			caso 6: 
				escreva("\nO valor do SAL é: R$ " + valorSal + "\n")
				pare
			caso 7: 
				escreva("\nO valor do MACARRAO é: R$ " + valorMacarrao + "\n")
				pare
			caso contrario: 
				escreva("\nOpção inválida! Por favor, escolha um número de 1 a 7.\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1628; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */