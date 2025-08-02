programa
{
  funcao inicio()
  {
    // 1. Declaração dos vetores
    // 'vetorOriginal' armazenará os números digitados pelo usuário.
    // 'vetorCopia' terá o mesmo tamanho e receberá os números de 'vetorOriginal'.
    inteiro vetorOriginal[10] 
    inteiro vetorCopia[10]   

    escreva("--- Preenchendo o Vetor Original ---\n")

    // 2. Pedir ao usuário para preencher o vetor original
    // O laço 'para' itera do índice 0 até o 9 (10 posições).
    para (inteiro i = 0; i < 10; i++) {
      escreva("Digite um valor para a posição [" + i + "] do Vetor Original: ")
      leia(vetorOriginal[i]) // Lê o valor e armazena no vetorOriginal
    }

    escreva("\n--- Copiando para o Segundo Vetor ---\n")

    // 3. Copiar os elementos do vetor original para o vetor cópia
    // Percorremos o 'vetorOriginal' e atribuímos cada elemento à posição correspondente em 'vetorCopia'.
    para (inteiro i = 0; i < 10; i++) {
      vetorCopia[i] = vetorOriginal[i] // A atribuição faz a cópia do valor
    }

    escreva("\n--- Exibindo os Vetores ---\n")

    // 4. Exibir o conteúdo de ambos os vetores
    // Primeiro, exibimos o vetor original.
    escreva("\nConteúdo do VETOR ORIGINAL:\n")
    para (inteiro i = 0; i < 10; i++) {
      escreva("Vetor Original [" + i + "]: " + vetorOriginal[i] + "\n")
    }

    // Depois, exibimos o vetor cópia.
    escreva("\nConteúdo do VETOR CÓPIA:\n")
    para (inteiro i = 0; i < 10; i++) {
      escreva("Vetor Cópia   [" + i + "]: " + vetorCopia[i] + "\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1516; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */