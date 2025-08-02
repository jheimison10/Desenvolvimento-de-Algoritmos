programa
{
	funcao inicio()
	{
		real num1, num2, quociente
		escreva("Digite o primeiro número (dividendo): ")
		leia(num1) 
		escreva("Digite o segundo número (divisor): ")
		leia(num2) 
		se (num2 == 0)
		{
			escreva("\nErro: Não é possível dividir por zero!")
		}
		senao
		{
			quociente = num1 / num2
			escreva("\nO quociente da divisão de ", num1, " por ", num2, " é: ", quociente)
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */