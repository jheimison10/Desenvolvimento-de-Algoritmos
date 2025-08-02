/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject8;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class AreaCirculo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Olá! Vamos calcular a área de um círculo.");

        System.out.println("Por favor, digite o valor do raio do círculo:");
        double raio = scanner.nextDouble(); // Lê o valor do raio

        // Define o valor de Pi. Math.PI é uma constante em Java com alta precisão.
        final double PI = Math.PI; 

        // Calcula a área do círculo usando a fórmula: PI * raio * raio
        double area = PI * raio * raio; 
        // Alternativamente, você poderia usar Math.pow(raio, 2) para raio ao quadrado:
        // double area = PI * Math.pow(raio, 2);

        System.out.println("O raio do círculo é: " + raio);
        System.out.println("A área do círculo é: " + area);

        scanner.close(); // Fecha o objeto Scanner para liberar recursos
    }
}