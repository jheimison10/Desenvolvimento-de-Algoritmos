/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject4;

/**
 *
 * @author Windows
 */
public class Fatoriais {
    public static void main(String[] args) {
        System.out.println("Calculando e imprimindo os fatoriais de 1 a 10:");

        // Loop externo para iterar por cada número de 1 a 10
        for (int n = 1; n <= 10; n++) {
            // A variável 'fatorial' precisa ser do tipo 'long'
            // porque os fatoriais crescem muito rápido e podem exceder o limite de um 'int'.
            long fatorial = 1; 

            // Loop interno para calcular o fatorial de 'n'
            for (int i = 1; i <= n; i++) {
                fatorial = fatorial * i; // Multiplica o fatorial acumulado pelo número atual 'i'
            }
            
            // Imprime o resultado para o número atual 'n'
            System.out.println("O fatorial de " + n + " é: " + fatorial);
        }
    }
}