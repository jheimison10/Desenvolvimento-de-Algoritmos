/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject2;

/**
 *
 * @author Windows
 */
public class SomaAteMil {
    public static void main(String[] args) {
        // Declara uma variável para armazenar a soma.
        // Usamos 'long' para garantir que a soma total (que será grande) caiba.
        long soma = 0; 

        System.out.println("Calculando a soma dos números de 1 a 1000...");

        // Loop 'for' para iterar de 1 até 1000
        for (int i = 1; i <= 1000; i++) {
            soma = soma + i; // Adiciona o número atual (i) à soma
            // Alternativamente, você pode usar a forma abreviada: soma += i;
        }

        // Imprime o resultado final
        System.out.println("A soma de todos os números de 1 a 1000 é: " + soma);
    }
}