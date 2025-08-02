programa
{
  funcao inicio()
  {
    inteiro numero
    inteiro fatorial = 1 // Inicializado com 1, pois o fatorial de 0 é 1 e para o produto não zerar
    inteiro contador = 1

    escreva("Digite um número para calcular o fatorial: ")
    leia(numero)

    se (numero < 0) {
      escreva("Não é possível calcular o fatorial de um número negativo.\n")
    } senao se (numero == 0) {
      escreva("O fatorial de 0 é: 1\n")
    } senao {
      enquanto (contador <= numero) { // Enquanto o contador for menor ou igual ao número
        fatorial = fatorial * contador // Multiplica o fatorial pelo contador
        contador = contador + 1 // Incrementa o contador
      }
      escreva("O fatorial de " + numero + " é: " + fatorial + "\n")
    }
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 751; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */