programa
{
  funcao inicio()
  {
    inteiro numero
    inteiro contador = 0

    escreva("Digite números para contar (digite 0 para parar):\n")
    leia(numero) // Lê o primeiro número

    enquanto (numero != 0) { // Enquanto o número digitado não for zero
      contador = contador + 1 // Incrementa o contador
      leia(numero) // Lê o próximo número
    }
    escreva("Foram digitados " + contador + " números (excluindo o zero de parada).\n")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 455; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */