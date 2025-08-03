/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject8;

/**
 *
 * @author Windows
 */
public class TabelaMultiplicacao {
    public static void main(String[] args) {
        System.out.println("Gerando a tabela de multiplicação:");

        // Loop externo: controla o número da linha (de 1 a 4 para o exemplo, ou 'n' para o geral)
        // Para imprimir a tabela até a linha 4, podemos usar 'i <= 4'.
        // Se quisermos que o usuário defina o 'n' máximo, precisaríamos de Scanner.
        // Vou usar um limite fixo para o exemplo, como o problema sugere até 4 e depois 'n'.
        int limiteLinhas = 4; // Define até qual linha a tabela será impressa

        for (int i = 1; i <= limiteLinhas; i++) { // 'i' representa o número da linha (n)
            // Loop interno: calcula e imprime os múltiplos para a linha atual 'i'
            for (int j = 1; j <= i; j++) { // 'j' vai de 1 até o número da linha 'i'
                System.out.print(i * j + " "); // Imprime o múltiplo (i * j) seguido de um espaço
            }
            System.out.println(); // Pula para a próxima linha após imprimir todos os múltiplos de 'i'
        }

        // Exemplo de como seria para um 'n' genérico, caso você queira estender
        // para um 'n' digitado pelo usuário.
        // System.out.println("\n--- Exemplo para n = 5 ---");
        // int nGenerico = 5;
        // for (int i = 1; i <= nGenerico; i++) {
        //     for (int j = 1; j <= i; j++) {
        //         System.out.print(i * j + " ");
        //     }
        //     System.out.println();
        // }
    }
}
