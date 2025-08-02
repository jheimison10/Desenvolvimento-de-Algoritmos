/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject9;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class PerimetroTriangulo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Olá! Vamos calcular o perímetro de um triângulo.");

        System.out.println("Por favor, digite o comprimento do primeiro lado do triângulo:");
        double lado1 = scanner.nextDouble(); // Lê o valor do primeiro lado

        System.out.println("Por favor, digite o comprimento do segundo lado do triângulo:");
        double lado2 = scanner.nextDouble(); // Lê o valor do segundo lado

        System.out.println("Por favor, digite o comprimento do terceiro lado do triângulo:");
        double lado3 = scanner.nextDouble(); // Lê o valor do terceiro lado

        // O perímetro de um triângulo é a soma de todos os seus lados
        double perimetro = lado1 + lado2 + lado3;

        System.out.println("O comprimento do primeiro lado é: " + lado1);
        System.out.println("O comprimento do segundo lado é: " + lado2);
        System.out.println("O comprimento do terceiro lado é: " + lado3);
        System.out.println("O perímetro do triângulo é: " + perimetro);

        scanner.close(); // Fecha o objeto Scanner para liberar recursos
    }
}
