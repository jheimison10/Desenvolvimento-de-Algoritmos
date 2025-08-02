/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject11;

/**
 *
 * @author Windows
 */
import java.util.Scanner; // Importa a classe Scanner para ler entrada do usuário

public class CalculoDesconto {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in); // Cria um objeto Scanner

        System.out.println("Olá! Vamos calcular o valor final de um produto com desconto.");

        System.out.println("Por favor, digite o valor original do produto:");
        double valorOriginal = scanner.nextDouble(); // Lê o valor original do produto

        System.out.println("Por favor, digite a porcentagem de desconto (ex: 10 para 10%):");
        double porcentagemDesconto = scanner.nextDouble(); // Lê a porcentagem de desconto

        // Converte a porcentagem para um valor decimal (ex: 10% -> 0.10)
        double valorDesconto = (porcentagemDesconto / 100.0) * valorOriginal;

        // Calcula o valor final com o desconto
        double valorFinal = valorOriginal - valorDesconto;

        System.out.println("O valor original do produto é: R$ " + String.format("%.2f", valorOriginal));
        System.out.println("A porcentagem de desconto aplicada é: " + String.format("%.2f", porcentagemDesconto) + "%");
        System.out.println("O valor do desconto é: R$ " + String.format("%.2f", valorDesconto));
        System.out.println("O valor final do produto com desconto é: R$ " + String.format("%.2f", valorFinal));

        scanner.close(); // Fecha o objeto Scanner para liberar recursos
    }
}