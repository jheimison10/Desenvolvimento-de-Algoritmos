/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mavenproject2;

/**
 *
 * @author Windows
 */
public class Banco { // Removido 'public' para permitir que esteja no mesmo arquivo que Conta, se necessário
    public static void main(String[] args) {
        // Criação das contas usando o construtor
        Conta minhaConta = new Conta("JHEIMISON", 1000.0);
        Conta meuSonho = new Conta("JOÃO", 15000);

        System.out.println("--- Saldos Iniciais ---");
        minhaConta.mostra();
        meuSonho.mostra();

        // Operações na minhaConta
        minhaConta.saca(200);
        minhaConta.deposita(500);

        // Tentativa de saque e verificação
        boolean conseguiSacar = minhaConta.saca(800);
        if (conseguiSacar) {
            System.out.println("Saque de 800: Consegui sacar.");
        } else {
            System.out.println("Saque de 800: Não consegui sacar.");
        }

        // Executar uma transferência
        System.out.println("\n--- Realizando Transferência ---");
        minhaConta.transfere(300, meuSonho); // Transferindo 300 de minhaConta para meuSonho
        // Exibição dos detalhes finais da minhaConta
        System.out.println("\n--- Detalhes Finais da Minha Conta ---");
        minhaConta.mostra();

        // Exibição dos detalhes finais da meuSonho (sem operações nela, apenas para mostrar o estado final)
        System.out.println("\n--- Detalhes Finais da Conta Meu Sonho ---");
        meuSonho.mostra();
    }
}
