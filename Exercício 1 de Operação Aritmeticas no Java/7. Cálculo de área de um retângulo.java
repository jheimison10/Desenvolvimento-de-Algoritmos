/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject7;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class AreaRetangulo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Olá! Vamos calcular a área de um retângulo.");

        System.out.println("Por favor, digite o valor da base do retângulo:");
        double base = scanner.nextDouble(); // Lê o valor da base

        System.out.println("Por favor, digite o valor da altura do retângulo:");
        double altura = scanner.nextDouble(); // Lê o valor da altura

        // Calcula a área do retângulo (base * altura)
        double area = base * altura;

        System.out.println("A base do retângulo é: " + base);
        System.out.println("A altura do retângulo é: " + altura);
        System.out.println("A área do retângulo é: " + area);

        scanner.close(); // Fecha o objeto Scanner para liberar recursos
    }
}
