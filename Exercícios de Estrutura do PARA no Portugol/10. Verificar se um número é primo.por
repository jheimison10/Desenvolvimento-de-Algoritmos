programa
{
  funcao inicio()
  {
    inteiro numero
    logico ehPrimo = verdadeiro // Assume que é primo até que se prove o contrário

    escreva("Digite um número para verificar se é primo: ")
    leia(numero)

    se (numero <= 1) {
      ehPrimo = falso // Números menores ou iguais a 1 não são primos
    } senao {
      // Começamos a verificar a partir de 2 até a raiz quadrada do número
      // Pois se um número tem um divisor maior que sua raiz, ele também terá um menor.
      // Simplificando para este exercício, vamos até numero - 1.
      para (inteiro i = 2; i < numero; i++) {
        se (numero % i == 0) {
          ehPrimo = falso // Se encontrar um divisor, não é primo
          pare // No Portugol Studio, 'pare' sai do laço
        }
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
 * @POSICAO-CURSOR = 919; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */