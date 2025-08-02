programa
{
  funcao inicio()
  {
    inteiro numero
    logico ehPrimo = verdadeiro // Assume que é primo até que se prove o contrário
    inteiro divisor = 2 // Começa a verificar divisores a partir de 2

    escreva("Digite um número para verificar se é primo: ")
    leia(numero)

    se (numero <= 1) {
      ehPrimo = falso // Números menores ou iguais a 1 não são primos
    } senao {
      // Loop para verificar divisores de 2 até (numero - 1)
      enquanto (divisor < numero) {
        se (numero % divisor == 0) { // Se encontrar um divisor
          ehPrimo = falso // Não é primo
          divisor = numero // Quebra o laço forçando a condição a ser falsa
        }
        divisor = divisor + 1 // Incrementa o divisor
      }
    }

    se (ehPrimo) {
      escreva(numero + " é um número primo.\n")
    } senao {
      escreva(numero + " não é um número primo.\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 892; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */