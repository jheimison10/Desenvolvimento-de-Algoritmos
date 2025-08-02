programa
{
  funcao inicio()
  {
    // 1. Declaração do vetor de 15 posições
    // A palavra-chave 'vetor' é usada para declarar arrays em Portugol Studio.
    // [15] indica que terá 15 elementos (índices de 0 a 14).
    inteiro meuVetor[15] 

    escreva("--- Preenchimento do Vetor ---\n")

    // 2. Pedir ao usuário para preencher cada posição do vetor
    // Usamos um laço 'para' para iterar de 0 a 14 (as 15 posições do vetor).
    para (inteiro i = 0; i < 15; i++) {
      escreva("Digite um valor para a posição [" + i + "]: ")
      leia(meuVetor[i]) // Lê o valor e armazena na posição 'i' do vetor
    }

    escreva("\n--- Conteúdo do Vetor ---\n")

    // 3. Exibir o conteúdo do vetor
    // Usamos outro laço 'para' para percorrer o vetor e exibir cada elemento.
    para (inteiro i = 0; i < 15; i++) {
      escreva("Posição [" + i + "]: " + meuVetor[i] + "\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 893; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */