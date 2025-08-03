/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.mavenproject3;

/**
 *
 * @author Windows
 */
public class Funcionario {
       String nome;
    String rg;
    double salario;
    // Outros atributos que você julgar necessários, como data de entrada, departamento, etc.
    String departamento;
    String dataEntrada;

    public void mostra() {
        System.out.println("Nome: " + this.nome);
        System.out.println("RG: " + this.rg);
        System.out.println("Salário: " + this.salario);
        System.out.println("Departamento: " + this.departamento);
        System.out.println("Data de Entrada: " + this.dataEntrada);
        System.out.println("--------------------");
        
        
    }
}