/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject6;

/**
 *
 * @author Windows
 */
public class Fibonacci {
    public static void main(String[] args) {
        System.out.println("Gerando a série de Fibonacci até passar de 100:");

        int a = 0; // Primeiro elemento da série
        int b = 1; // Segundo elemento da série

        System.out.println(a); // Imprime o primeiro elemento (0)

        // Loop 'while' para gerar os próximos números
        // Continua enquanto o valor atual (b) for menor ou igual a 100
        while (b <= 100) {
            System.out.println(b); // Imprime o elemento atual

            int proximo = a + b; // Calcula o próximo elemento
            a = b;               // Atualiza 'a' para ser o valor anterior de 'b'
            b = proximo;         // Atualiza 'b' para ser o novo elemento calculado
        }
    }
}
