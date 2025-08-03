/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject7;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class Collatz {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Olá! Vamos explorar a Conjectura de Collatz.");
        System.out.println("Por favor, digite um número inteiro positivo (diferente de 0 e 1) para começar:");
        
        int x = scanner.nextInt(); // Lê o valor inicial de x

        // Validar a entrada para garantir que x seja positivo e diferente de 0 e 1
        if (x <= 1) {
            System.out.println("Por favor, digite um número inteiro positivo maior que 1.");
            scanner.close();
            return; // Encerra o programa se a entrada for inválida
        }

        System.out.print("Sequência para " + x + ": "); // Imprime o valor inicial

        // Loop principal que continua enquanto x for diferente de 1
        while (x != 1) {
            if (x % 2 == 0) { // Verifica se x é par
                x = x / 2;    // Se par, divide x por 2
            } else {          // Se x é ímpar
                x = 3 * x + 1; // Se ímpar, multiplica x por 3 e soma 1
            }
            System.out.print(x); // Imprime o novo valor de x
            if (x != 1) {
                System.out.print(" -> "); // Adiciona " -> " se não for o último número (1)
            }
        }
        System.out.println(); // Pula para a próxima linha no final da sequência

        scanner.close(); // Fecha o objeto Scanner
    }
}
