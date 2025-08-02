programa
{
  funcao inicio()
  {
    // 1. Declaração do vetor de 6 posições
    // O vetor 'valores' armazenará 6 números inteiros.
    inteiro valores[6] 

    escreva("--- Preenchimento do Vetor ---\n")

    // 2. Pedir ao usuário para preencher cada posição do vetor
    // O laço 'para' itera do índice 0 até o 5.
    para (inteiro i = 0; i < 6; i++) {
      escreva("Digite um valor para a posição [" + i + "]: ")
      leia(valores[i]) // Lê o valor e o armazena na posição 'i'
    }

    escreva("\n--- Valores do Vetor em Ordem Inversa ---\n")

    // 3. Exibir os valores do vetor na ordem inversa
    // Começamos do último índice (5) e vamos até o primeiro (0).
    para (inteiro i = 5; i >= 0; i--) { 
      escreva("Posição [" + i + "]: " + valores[i] + "\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 785; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */