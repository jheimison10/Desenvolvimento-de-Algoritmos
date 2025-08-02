/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject4;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class DivisaoDoisNumeros {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Por favor, digite o primeiro número (dividendo):");
        double dividendo = scanner.nextDouble(); // Lê o primeiro número (dividendo)

        System.out.println("Por favor, digite o segundo número (divisor):");
        double divisor = scanner.nextDouble(); // Lê o segundo número (divisor)

        // Verifica se o divisor é zero para evitar erro de divisão por zero
        if (divisor == 0) {
            System.out.println("Erro: Não é possível dividir por zero!");
        } else {
            // Calcula o quociente
            double quociente = dividendo / divisor;

            System.out.println("O quociente da divisão é: " + quociente);
        }

        scanner.close(); // Fecha o objeto Scanner
    }
}