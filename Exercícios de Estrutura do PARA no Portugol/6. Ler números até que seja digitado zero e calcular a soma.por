programa
{
  funcao inicio()
  {
    inteiro numero
    inteiro soma = 0

    escreva("Digite números para somar (digite 0 para parar):\n")

    leia(numero) // Lê o primeiro número antes do laço

    enquanto (numero != 0) {
      soma = soma + numero
      leia(numero) // Lê o próximo número
    }
    escreva("A soma dos números digitados é: " + soma + "\n")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 368; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */