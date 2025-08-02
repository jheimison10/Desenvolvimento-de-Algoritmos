/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject5;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class MediaTresNumeros {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Olá! Vamos calcular a média de três números.");

        System.out.println("Por favor, digite o primeiro número:");
        double numero1 = scanner.nextDouble(); // Lê o primeiro número

        System.out.println("Por favor, digite o segundo número:");
        double numero2 = scanner.nextDouble(); // Lê o segundo número

        System.out.println("Por favor, digite o terceiro número:");
        double numero3 = scanner.nextDouble(); // Lê o terceiro número

        // Calcula a soma dos três números
        double soma = numero1 + numero2 + numero3;

        // Calcula a média aritmética, dividindo a soma por 3.0 para garantir resultado decimal
        double media = soma / 3.0;

        System.out.println("A soma dos números é: " + soma);
        System.out.println("A média aritmética dos três números é: " + media);

        scanner.close(); // Fecha o objeto Scanner para liberar recursos
    }
}