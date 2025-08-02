programa
{
  funcao inicio()
  {
    inteiro numero = 1
    inteiro soma = 0 // Variável para armazenar a soma

    faca {
      soma = soma + numero // Adiciona o número atual à soma
      numero = numero + 1 // Incrementa o número
    } enquanto (numero <= 100) // Continua enquanto o número for menor ou igual a 100
    
    escreva("A soma dos números de 1 a 100 é: " + soma + "\n")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 392; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */