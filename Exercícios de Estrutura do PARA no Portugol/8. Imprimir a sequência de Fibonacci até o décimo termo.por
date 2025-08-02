programa
{
  funcao inicio()
  {
    inteiro termo1 = 0
    inteiro termo2 = 1
    inteiro proximoTermo

    escreva("Sequência de Fibonacci até o décimo termo:\n")
    escreva(termo1 + ",") // Imprime o primeiro termo (0)
    escreva(termo2 + ",") // Imprime o segundo termo (1)

    // O laço PARA começa do terceiro termo (i=3) até o décimo (i=10)
    para (inteiro i = 3; i <= 10; i++) {
      proximoTermo = termo1 + termo2
      escreva(proximoTermo + ",")
      termo1 = termo2
      termo2 = proximoTermo
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 162; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */