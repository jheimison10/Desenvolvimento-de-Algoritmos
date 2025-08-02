/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject3;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class MultiplicacaoDivisao {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Por favor, digite o primeiro número:");
        double numero1 = scanner.nextDouble(); // Lê o primeiro número

        System.out.println("Por favor, digite o segundo número:");
        double numero2 = scanner.nextDouble(); // Lê o segundo número

        // Calcula o produto (multiplicação) dos dois números
        double produto = numero1 * numero2;

        // Realiza a divisão do produto por 3
        // É importante garantir que o divisor (3) seja um double para que a divisão resulte em um double (e não em um int se ambos fossem int)
        double resultadoFinal = produto / 3.0; 

        System.out.println("O produto dos dois números é: " + produto);
        System.out.println("O resultado do produto dividido por 3 é: " + resultadoFinal);

        scanner.close(); // Fecha o objeto Scanner
    }
}