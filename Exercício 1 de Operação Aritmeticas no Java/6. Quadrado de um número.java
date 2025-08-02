/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject6;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class QuadradoNumero {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Olá! Vamos calcular o quadrado de um número.");
        System.out.println("Por favor, digite um número:");
        
        double numero = scanner.nextDouble(); // Lê o número (pode ser decimal)

        // Calcula o quadrado do número (número * número)
        double quadrado = numero * numero; 
        
        System.out.println("O número que você digitou foi: " + numero);
        System.out.println("O quadrado de " + numero + " é: " + quadrado);

        scanner.close(); // Fecha o objeto Scanner para liberar recursos
    }
}