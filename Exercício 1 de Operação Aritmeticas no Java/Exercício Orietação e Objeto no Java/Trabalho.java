/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.mavenproject3;

/**
 *
 * @author Windows
 */
public class Trabalho {

   public static void main(String[] args) {
        // Criando uma instância de Empresa
        // A array de funcionários é criada dentro do construtor da Empresa com capacidade 5
        Empresa minhaEmpresa = new Empresa("Tech Solutions Ltda.", "12.345.678/0001-90", 5);

        // Criando algumas instâncias de Funcionario
        Funcionario f1 = new Funcionario();
        f1.nome = "João Silva";
        f1.rg = "11.111.111-1";
        f1.salario = 1000.0;
        f1.departamento = "Desenvolvimento";
        f1.dataEntrada = "01/01/2023";

        Funcionario f2 = new Funcionario();
        f2.nome = "Maria Souza";
        f2.rg = "22.222.222-2";
        f2.salario = 1700.0;
        f2.departamento = "Marketing";
        f2.dataEntrada = "15/03/2023";

        Funcionario f3 = new Funcionario();
        f3.nome = "Pedro Santos";
        f3.rg = "33.333.333-3";
        f3.salario = 2500.0;
        f3.departamento = "Recursos Humanos";
        f3.dataEntrada = "10/05/2024";

        Funcionario f4 = new Funcionario();
        f4.nome = "Ana Costa";
        f4.rg = "44.444.444-4";
        f4.salario = 1850.0;
        f4.departamento = "Financeiro";
        f4.dataEntrada = "20/07/2024";

        Funcionario f5 = new Funcionario();
        f5.nome = "Lucas Pereira";
        f5.rg = "55.555.555-5";
        f5.salario = 2100.0;
        f5.departamento = "Desenvolvimento";
        f5.dataEntrada = "01/02/2025";

        Funcionario f6 = new Funcionario(); // Este não será adicionado se a capacidade for 5
        f6.nome = "Juliana Lima";
        f6.rg = "66.666.666-6";
        f6.salario = 1900.0;
        f6.departamento = "Vendas";
        f6.dataEntrada = "10/04/2025";


        // Adicionando funcionários à empresa usando o método adiciona
        minhaEmpresa.adiciona(f1);
        minhaEmpresa.adiciona(f2);
        minhaEmpresa.adiciona(f3);
        minhaEmpresa.adiciona(f4);
        minhaEmpresa.adiciona(f5);
        minhaEmpresa.adiciona(f6); // Tentando adicionar além da capacidade

        // Mostrando todos os funcionários da empresa
        minhaEmpresa.mostraEmpregados();

        // Exemplo de como acessar um funcionário específico e seus dados
        System.out.println("\n--- Acessando um funcionário específico ---");
        if (minhaEmpresa.empregados[0] != null) {
            System.out.println("O salário do primeiro funcionário (" + minhaEmpresa.empregados[0].nome + ") é: " + minhaEmpresa.empregados[0].salario);
        }
    }
}