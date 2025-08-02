programa
{
  funcao inicio()
  {
    inteiro numero
    inteiro soma = 0

    escreva("Digite números para somar (digite 0 para parar):\n")
    
    faca {
      leia(numero) // Lê o número
      soma = soma + numero // Adiciona o número à soma
    } enquanto (numero != 0) // Continua enquanto o número digitado não for zero
    
    escreva("A soma dos números digitados é: " + soma + "\n")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 398; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */