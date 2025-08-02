programa
{
  funcao inicio()
  {
    // 1. Declaração do vetor de 10 posições
    // O vetor 'numeros' pode armazenar 10 números inteiros.
    // Os índices vão de 0 a 9.
    inteiro numeros[10] 
    inteiro soma = 0 // Variável para armazenar a soma dos elementos

    escreva("--- Preenchimento do Vetor ---\n")

    // 2. Pedir ao usuário para preencher cada posição do vetor
    // Usamos um laço 'para' para iterar de 0 a 9 (as 10 posições).
    para (inteiro i = 0; i < 10; i++) {
      escreva("Digite um valor para a posição [" + i + "]: ")
      leia(numeros[i]) // Lê o valor e armazena na posição 'i'
    }

    escreva("\n--- Calculando a Soma ---\n")

    // 3. Calcular a soma dos elementos do vetor
    // Percorremos o vetor novamente para somar cada elemento.
    para (inteiro i = 0; i < 10; i++) {
      soma = soma + numeros[i] // Adiciona o valor da posição atual à soma
    }

    // 4. Exibir a soma dos elementos
    escreva("A soma de todos os elementos do vetor é: " + soma + "\n")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1013; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */