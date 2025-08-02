programa
{
  funcao inicio()
  {
    inteiro numero
    inteiro contador = 0

    escreva("Digite números para contar (digite 0 para parar):\n")
    
    faca {
      leia(numero) // Lê o número
      se (numero != 0) { // Conta apenas se o número não for o zero de parada
        contador = contador + 1 
      }
    } enquanto (numero != 0) // Continua enquanto o número digitado não for zero
    
    escreva("Foram digitados " + contador + " números (excluindo o zero de parada).\n")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 493; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */