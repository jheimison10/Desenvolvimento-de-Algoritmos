programa
{
  funcao inicio()
  {
    real nota
    real somaNotas = 0.0
    inteiro contadorNotas = 0

    escreva("Digite as notas para calcular a média (digite uma nota negativa para parar):\n")
    
    faca {
      leia(nota) // Lê a nota
      se (nota >= 0) { // Se a nota não for negativa, adiciona à soma e conta
        somaNotas = somaNotas + nota
        contadorNotas = contadorNotas + 1
      }
    } enquanto (nota >= 0) // Continua enquanto a nota for não negativa

    se (contadorNotas > 0) { // Evita divisão por zero
      real media = somaNotas / contadorNotas
      escreva("A média das notas é: " + media + "\n")
    } senao {
      escreva("Nenhuma nota válida foi digitada.\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 632; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */