programa
{
  funcao inicio()
  {
    // Declara um vetor para armazenar 8 números inteiros.
    inteiro numeros[8] 
    // Variável para armazenar o número que o usuário deseja pesquisar.
    inteiro numeroPesquisado 
    // Uma flag lógica (booleana) para indicar se o número foi encontrado.
    logico encontrado = falso 

    escreva("--- Preenchendo o Vetor ---\n")

    // Laço para preencher o vetor com 8 números digitados pelo usuário.
    para (inteiro i = 0; i < 8; i++) {
      escreva("Digite um valor para a posição [" + i + "]: ")
      leia(numeros[i]) // Lê o valor e armazena na posição atual do vetor.
    }

    escreva("\n--- Buscando um Número ---\n")
    escreva("Digite um número para buscar no vetor: ")
    leia(numeroPesquisado) // Lê o número que o usuário deseja encontrar.

    // Laço para percorrer o vetor e verificar se o número está presente.
    para (inteiro i = 0; i < 8; i++) {
      se (numeros[i] == numeroPesquisado) { // Se o número atual no vetor for igual ao número pesquisado
        encontrado = verdadeiro // Define a flag como verdadeiro
        pare // Sai do laço mais cedo, pois já encontramos o número
      }
    }

    // Exibe o resultado com base na flag 'encontrado'.
    se (encontrado) {
      escreva("\nSUCESSO: O número " + numeroPesquisado + " foi encontrado no vetor.\n")
    } senao {
      escreva("\nNÃO ENCONTRADO: O número " + numeroPesquisado + " NÃO foi encontrado no vetor.\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1461; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */