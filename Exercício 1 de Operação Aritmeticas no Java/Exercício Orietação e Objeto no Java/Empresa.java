/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.mavenproject3;

/**
 *
 * @author Windows
 */
public class Empresa {

    String nome;
    String cnpj;
    Funcionario[] empregados;
    int proximaPosicaoLivre; // Atributo para controlar a próxima posição vazia

    // Construtor para inicializar a array de empregados e o contador
    public Empresa(String nome, String cnpj, int capacidade) {
        this.nome = nome;
        this.cnpj = cnpj;
        this.empregados = new Funcionario[capacidade];
        this.proximaPosicaoLivre = 0; // Inicia a primeira posição livre como 0
    }

    // Método adiciona que recebe uma referência a Funcionario
    void adiciona(Funcionario f) {
        if (this.proximaPosicaoLivre < this.empregados.length) {
            this.empregados[this.proximaPosicaoLivre] = f;
            this.proximaPosicaoLivre++; // Incrementa para a próxima posição livre
            System.out.println("Funcionário " + f.nome + " adicionado à empresa " + this.nome + " na posição " + (this.proximaPosicaoLivre - 1));
        } else {
            System.out.println("Não foi possível adicionar o funcionário " + f.nome + ". A empresa " + this.nome + " atingiu sua capacidade máxima de funcionários.");
        }
    }

    // Método para mostrar todos os funcionários da empresa
    void mostraEmpregados() {
        System.out.println("\n--- Funcionários da Empresa " + this.nome + " ---");
        if (this.proximaPosicaoLivre == 0) {
            System.out.println("Nenhum funcionário cadastrado.");
            return;
        }
        for (int i = 0; i < this.proximaPosicaoLivre; i++) {
            if (this.empregados[i] != null) { // Verifica se a posição não é nula (embora com proximaPosicaoLivre não seria)
                this.empregados[i].mostra();
            }
        }
    }
}
