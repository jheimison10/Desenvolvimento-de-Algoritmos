programa
{
  funcao inicio()
  {
    inteiro termo1 = 0
    inteiro termo2 = 1
    inteiro proximoTermo
    inteiro contador = 1

    escreva("Sequência de Fibonacci até o décimo termo:\n")
    
    faca {
      se (contador == 1) {
        escreva(termo1 + ",")
      } senao se (contador == 2) {
        escreva(termo2 + ",")
      } senao {
        proximoTermo = termo1 + termo2
        escreva(proximoTermo + ",")
        termo1 = termo2
        termo2 = proximoTermo
      }
      contador = contador + 1 // Incrementa o contador
    } enquanto (contador <= 10) // Continua até o décimo termo
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 604; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */