programa
{
  funcao inicio()
  {
    // 1. Declaração do vetor de 10 posições
    // O vetor 'numeros' armazenará 10 valores inteiros.
    inteiro numeros[10] 

    escreva("--- Preenchimento do Vetor ---\n")

    // 2. Pedir ao usuário para preencher cada posição do vetor
    // Um laço 'para' itera de 0 a 9 para preencher todas as 10 posições.
    para (inteiro i = 0; i < 10; i++) {
      escreva("Digite um valor para a posição [" + i + "]: ")
      leia(numeros[i]) // Lê o valor e o armazena na posição 'i' do vetor
    }

    escreva("\n--- Números Pares no Vetor ---\n")

    // 3. Percorrer o vetor e exibir apenas os números pares
    // Outro laço 'para' é usado para verificar cada elemento do vetor.
    para (inteiro i = 0; i < 10; i++) {
      // O operador '%' (módulo) retorna o resto da divisão.
      // Se o resto da divisão por 2 for 0, o número é par.
      se (numeros[i] % 2 == 0) { 
        escreva("Posição [" + i + "]: " + numeros[i] + "\n")
      }
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 990; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */