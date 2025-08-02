programa
{
  funcao inicio()
  {
    // Declara um vetor para armazenar 10 números inteiros.
    inteiro numeros[10] 

    escreva("--- Preenchimento do Vetor ---\n")

    // Loop para pedir ao usuário para preencher cada posição do vetor.
    // Os índices vão de 0 a 9.
    para (inteiro i = 0; i < 10; i++) {
      escreva("Digite um valor para a posição [" + i + "]: ")
      leia(numeros[i]) // Lê o valor e armazena na posição atual do vetor.
    }

    escreva("\n--- Elementos em Posições Pares ---\n")

    // Loop para percorrer o vetor e exibir apenas os elementos em posições pares.
    para (inteiro i = 0; i < 10; i++) {
      // Usamos o operador de módulo (%) para verificar se o ÍNDICE 'i' é par.
      // Se o resto da divisão do índice 'i' por 2 for 0, a posição é par.
      se (i % 2 == 0) { 
        escreva("Elemento na Posição [" + i + "]: " + numeros[i] + "\n")
      }
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 906; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */