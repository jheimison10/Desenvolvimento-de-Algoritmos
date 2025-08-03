/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject5;

/**
 *
 * @author Windows
 */
public class FatoriaisGrandes {
    public static void main(String[] args) {
        System.out.println("Calculando e imprimindo os fatoriais de 1 a 20:");
        calcularFatoriaisAte(20);

        System.out.println("\n-------------------------------------------------");
        System.out.println("Calculando e imprimindo os fatoriais de 1 a 30:");
        calcularFatoriaisAte(30);

        System.out.println("\n-------------------------------------------------");
        System.out.println("Calculando e imprimindo os fatoriais de 1 a 40:");
        calcularFatoriaisAte(40);
    }

    // Método auxiliar para calcular e imprimir fatoriais até um limite
    public static void calcularFatoriaisAte(int limite) {
        for (int n = 1; n <= limite; n++) {
            // Mantenha 'fatorial' como 'long' para maior capacidade
            long fatorial = 1; 

            for (int i = 1; i <= n; i++) {
                // É crucial verificar se 'fatorial' excederá o limite de 'long'
                // antes da multiplicação, especialmente para números muito grandes.
                // No entanto, para fins de demonstração do estouro, podemos deixar sem essa checagem por enquanto.
                fatorial = fatorial * i; 
            }
            System.out.println("O fatorial de " + n + " é: " + fatorial);
        }
    }
}
