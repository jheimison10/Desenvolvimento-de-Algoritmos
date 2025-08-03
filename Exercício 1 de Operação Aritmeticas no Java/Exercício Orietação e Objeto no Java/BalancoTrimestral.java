/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.mavenproject1;

/**
 *
 * @author Windows
 */
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
import java.util.Scanner; // Importa a classe Scanner

public class BalancoTrimestral {
    public static void main(String[] args) {
        // a) Bloco main criado

        // b) Declarando e inicializando gastos de Janeiro
        int gastosJaneiro = 15000;

        // c) Declarando e inicializando gastos de Fevereiro e Março
        int gastosFevereiro = 23000;
        int gastosMarco = 17000;

        // d) Calculando o gasto total do trimestre
        int gastosTrimestre = gastosJaneiro + gastosFevereiro + gastosMarco;

        // e) Imprimindo o gasto total do trimestre
        System.out.println("Gasto total do trimestre: R$ " + gastosTrimestre);

        // f) Adicionando o cálculo e impressão da média mensal
        // Note que estamos usando 3.0 para garantir que a divisão retorne um double
        // e a média tenha casas decimais, se necessário.
        double mediaMensal = gastosTrimestre / 3.0; 
        System.out.println("Valor da média mensal = R$ " + String.format("%.2f", mediaMensal));
    }
}