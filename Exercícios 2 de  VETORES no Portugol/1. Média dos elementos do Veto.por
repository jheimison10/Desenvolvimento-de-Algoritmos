programa
{
  funcao inicio()
  {
    // Declaração do vetor para armazenar 5 números
    inteiro numeros[5] 
    // Variável para acumular a soma dos números. 
    // Usamos 'real' para 'soma' e 'media' para garantir precisão na divisão.
    real soma = 0.0 
    real media = 0.0

    escreva("--- Cálculo da Média dos Números ---\n")

    // Loop para ler os 5 números e preencher o vetor
    para (inteiro i = 0; i < 5; i++) {
      escreva("Digite o " + (i + 1) + "º número: ")
      leia(numeros[i]) // Lê o número e armazena na posição atual do vetor
      soma = soma + numeros[i] // Adiciona o número lido à soma total
    }

    // Calcula a média dividindo a soma pelo total de elementos (5)
    // É importante que 'soma' seja 'real' para que a divisão resulte em um número com casas decimais.
    media = soma / 5 

    escreva("\n--- Resultados ---\n")
    escreva("Os números digitados foram: \n")
    
    // Loop para exibir os números digitados (opcional, mas bom para visualização)
    para (inteiro i = 0; i < 5; i++) {
      escreva("  " + numeros[i] + "\n")
    }
    
    escreva("A soma dos números é: " + soma + "\n")
    escreva("A média aritmética dos números é: " + media + "\n")
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1211; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */