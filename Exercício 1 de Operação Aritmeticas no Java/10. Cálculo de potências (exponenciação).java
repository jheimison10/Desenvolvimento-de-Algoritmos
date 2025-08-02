/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject10;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class CalculoPotencia {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Olá! Vamos calcular uma potência (base elevada a um expoente).");

        System.out.println("Por favor, digite o valor da base:");
        double base = scanner.nextDouble(); // Lê o valor da base

        System.out.println("Por favor, digite o valor do expoente (inteiro ou decimal):");
        double expoente = scanner.nextDouble(); // Lê o valor do expoente

        // Calcula a potência usando Math.pow(base, expoente)
        // Math.pow(a, b) retorna 'a' elevado à potência de 'b'
        double resultado = Math.pow(base, expoente);

        System.out.println("A base digitada foi: " + base);
        System.out.println("O expoente digitado foi: " + expoente);
        System.out.println("O resultado de " + base + " elevado a " + expoente + " é: " + resultado);

        scanner.close(); // Fecha o objeto Scanner para liberar recursos
    }
}