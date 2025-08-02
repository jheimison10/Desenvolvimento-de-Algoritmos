programa
{
  funcao inicio()
  {
    inteiro numeroParaTabuada
    inteiro contador = 1

    escreva("Digite um número para ver a tabuada: ")
    leia(numeroParaTabuada)

    enquanto (contador <= 10) { // Enquanto o contador for menor ou igual a 10
      escreva(numeroParaTabuada + " x " + contador + " = " + (numeroParaTabuada * contador) + "\n")
      contador = contador + 1 // Incrementa o contador
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 416; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */