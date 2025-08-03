/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject3;

/**
 *
 * @author Windows
 */
public class MultiplosDeTres {
    public static void main(String[] args) {
        System.out.println("Imprimindo os múltiplos de 3 entre 1 e 100:");

        // Loop 'for' para iterar de 1 até 100
        for (int i = 1; i <= 100; i++) {
            // Verifica se o número atual (i) é um múltiplo de 3
            // Um número é múltiplo de 3 se o resto da sua divisão por 3 é zero.
            if (i % 3 == 0) { 
                System.out.println(i); // Se for múltiplo, imprime o número
            }
        }
    }
}