programa
{
  funcao inicio()
  {
    // Declara um vetor para armazenar 6 números inteiros.
    inteiro numeros[6] 

    escreva("--- Preenchendo o Vetor ---\n")

    // Loop para pedir ao usuário para preencher cada posição do vetor.
    para (inteiro i = 0; i < 6; i++) {
      escreva("Digite um valor para a posição [" + i + "]: ")
      leia(numeros[i]) // Lê o valor e armazena na posição atual do vetor.
    }

    escreva("\n--- Verificando e Substituindo Números Negativos ---\n")

    // Loop para percorrer o vetor e substituir negativos por zero.
    para (inteiro i = 0; i < 6; i++) {
      se (numeros[i] < 0) { // Se o número na posição atual for negativo
        numeros[i] = 0 // Substitui o número negativo por zero
        escreva("Valor na posição [" + i + "] era negativo e foi substituído por 0.\n")
      }
    }

    escreva("\n--- Vetor Final ---\n")

    // Loop para exibir o conteúdo final do vetor.
    para (inteiro i = 0; i < 6; i++) {
      escreva("Posição [" + i + "]: " + numeros[i] + "\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1037; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */