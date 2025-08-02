/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject2;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class SubtracaoMultiplicacao {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Por favor, digite o primeiro número:");
        double numero1 = scanner.nextDouble(); // Lê o primeiro número

        System.out.println("Por favor, digite o segundo número:");
        double numero2 = scanner.nextDouble(); // Lê o segundo número

        // Calcula a diferença entre o primeiro e o segundo número
        double diferenca = numero1 - numero2; 

        System.out.println("Por favor, digite o terceiro número:");
        double numero3 = scanner.nextDouble(); // Lê o terceiro número

        // Multiplica a diferença pelo terceiro número
        double resultadoFinal = diferenca * numero3;

        System.out.println("A diferença entre o primeiro e o segundo número é: " + diferenca);
        System.out.println("O resultado da diferença multiplicado pelo terceiro número é: " + resultadoFinal);

        scanner.close(); // Fecha o objeto Scanner
    }
}