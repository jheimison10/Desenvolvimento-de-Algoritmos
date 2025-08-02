programa
{
  funcao inicio()
  {
    // 1. Declaração do vetor e variáveis
    // O vetor 'numeros' armazenará 10 números inteiros.
    inteiro numeros[10] 
    // 'maiorValor' vai guardar o maior número encontrado.
    // Inicializamos ele com o menor valor possível para um inteiro,
    // ou, mais simples, com o primeiro elemento do vetor após o preenchimento.
    inteiro maiorValor 

    escreva("--- Preenchimento do Vetor ---\n")

    // 2. Pedir ao usuário para preencher cada posição do vetor
    para (inteiro i = 0; i < 10; i++) {
      escreva("Digite um valor para a posição [" + i + "]: ")
      leia(numeros[i]) // Lê o valor e armazena na posição 'i'
    }

    escreva("\n--- Encontrando o Maior Valor ---\n")

    // 3. Encontrar o maior valor no vetor
    // Assumimos que o primeiro elemento é o maior valor inicialmente.
    maiorValor = numeros[0] 

    // Percorremos o resto do vetor (a partir do segundo elemento, índice 1)
    // para comparar e encontrar o verdadeiro maior valor.
    para (inteiro i = 1; i < 10; i++) {
      se (numeros[i] > maiorValor) { // Se o valor na posição atual for maior que o 'maiorValor' atual
        maiorValor = numeros[i] // Atualiza 'maiorValor'
      }
    }

    // 4. Exibir o maior valor encontrado
    escreva("O maior valor armazenado no vetor é: " + maiorValor + "\n")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1344; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */