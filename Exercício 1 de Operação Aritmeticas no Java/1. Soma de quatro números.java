/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.mavenproject1;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class SomaQuatroNumeros {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Por favor, digite o primeiro número:");
        double numero1 = scanner.nextDouble(); // Lê o primeiro número (pode ser decimal)

        System.out.println("Por favor, digite o segundo número:");
        double numero2 = scanner.nextDouble(); // Lê o segundo número

        System.out.println("Por favor, digite o terceiro número:");
        double numero3 = scanner.nextDouble(); // Lê o terceiro número

        System.out.println("Por favor, digite o quarto número:");
        double numero4 = scanner.nextDouble(); // Lê o quarto número

        double soma = numero1 + numero2 + numero3 + numero4; // Calcula a soma

        System.out.println("A soma dos quatro números é: " + soma); // Imprime o resultado

        scanner.close(); // Fecha o objeto Scanner para liberar recursos
    }
}
