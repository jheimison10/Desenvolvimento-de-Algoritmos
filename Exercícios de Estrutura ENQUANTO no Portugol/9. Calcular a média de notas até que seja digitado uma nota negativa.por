programa
{
  funcao inicio()
  {
    real nota
    real somaNotas = 0.0
    inteiro contadorNotas = 0

    escreva("Digite as notas para calcular a média (digite uma nota negativa para parar):\n")
    leia(nota) // Lê a primeira nota

    enquanto (nota >= 0) { // Enquanto a nota for não negativa
      somaNotas = somaNotas + nota // Adiciona a nota à soma
      contadorNotas = contadorNotas + 1 // Incrementa o contador de notas
      leia(nota) // Lê a próxima nota
    }

    se (contadorNotas > 0) { // Evita divisão por zero se nenhuma nota válida for digitada
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
 * @POSICAO-CURSOR = 746; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */