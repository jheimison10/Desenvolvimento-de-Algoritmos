/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.mavenproject1;

/**
 *
 * @author Windows
 */
import javax.swing.*;       // Para componentes de interface gráfica (JFrame, JButton, JTextField, etc.)
import java.awt.*;          // Para layouts e cores
import java.awt.event.ActionEvent; // Para eventos de ação (clique de botão)
import java.awt.event.ActionListener; // Interface para tratamento de eventos

public class CalculadoraGUI extends JFrame implements ActionListener {

    // Componentes da interface
    private JTextField display; // Onde os números e resultados são mostrados
    private JButton[] botoesNumeros; // Botões de 0 a 9
    private JButton[] botoesOperadores; // Botões de +, -, *, /, =
    private JButton botaoLimpar; // Botão C (Clear)
    private JButton botaoPonto; // Botão . (ponto decimal)

    private String operadorAtual = ""; // Armazena o operador clicado (+, -, *, /)
    private double primeiroNumero = 0; // Armazena o primeiro número da operação
    private boolean novoNumero = true; // Indica se o próximo dígito inicia um novo número

    // Construtor da calculadora
    public CalculadoraGUI() {
        setTitle("Calculadora Java"); // Título da janela
        setSize(300, 400); // Tamanho da janela
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); // Fecha a aplicação ao clicar no 'X'
        setLayout(new BorderLayout()); // Define o layout principal (BorderLayout)
        setLocationRelativeTo(null); // Centraliza a janela na tela

        // --- Configuração do Display (Campo de Texto) ---
        display = new JTextField("0");
        display.setFont(new Font("Arial", Font.BOLD, 32)); // Fonte maior e em negrito
        display.setHorizontalAlignment(JTextField.RIGHT); // Alinha o texto à direita
        display.setEditable(false); // Impede que o usuário digite diretamente no display
        display.setBackground(Color.WHITE); // Fundo branco para o display
        display.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10)); // Margem interna
        add(display, BorderLayout.NORTH); // Adiciona o display na parte superior da janela

        // --- Configuração do Painel de Botões ---
        JPanel painelBotoes = new JPanel();
        painelBotoes.setLayout(new GridLayout(5, 4, 5, 5)); // Layout em grade (linhas, colunas, hgap, vgap)
        painelBotoes.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10)); // Margem interna

        // Inicializa arrays de botões
        botoesNumeros = new JButton[10]; // De 0 a 9
        for (int i = 0; i < 10; i++) {
            botoesNumeros[i] = new JButton(String.valueOf(i));
            botoesNumeros[i].setFont(new Font("Arial", Font.BOLD, 20));
            botoesNumeros[i].addActionListener(this); // Adiciona o tratador de eventos
            botoesNumeros[i].setBackground(new Color(220, 220, 220)); // Cor cinza claro
        }

        botoesOperadores = new JButton[4]; // +, -, *, /
        String[] operadores = {"+", "-", "*", "/"};
        for (int i = 0; i < 4; i++) {
            botoesOperadores[i] = new JButton(operadores[i]);
            botoesOperadores[i].setFont(new Font("Arial", Font.BOLD, 20));
            botoesOperadores[i].addActionListener(this);
            botoesOperadores[i].setBackground(new Color(255, 165, 0)); // Laranja
            botoesOperadores[i].setForeground(Color.WHITE); // Texto branco
        }

        JButton botaoIgual = new JButton("=");
        botaoIgual.setFont(new Font("Arial", Font.BOLD, 20));
        botaoIgual.addActionListener(this);
        botaoIgual.setBackground(new Color(0, 128, 0)); // Verde
        botaoIgual.setForeground(Color.WHITE);

        botaoLimpar = new JButton("C");
        botaoLimpar.setFont(new Font("Arial", Font.BOLD, 20));
        botaoLimpar.addActionListener(this);
        botaoLimpar.setBackground(new Color(200, 0, 0)); // Vermelho
        botaoLimpar.setForeground(Color.WHITE);

        botaoPonto = new JButton(".");
        botaoPonto.setFont(new Font("Arial", Font.BOLD, 20));
        botaoPonto.addActionListener(this);
        botaoPonto.setBackground(new Color(220, 220, 220));

        // --- Adiciona os botões ao painel em ordem ---
        // Linha 1
        painelBotoes.add(botoesNumeros[7]); // 7
        painelBotoes.add(botoesNumeros[8]); // 8
        painelBotoes.add(botoesNumeros[9]); // 9
        painelBotoes.add(botoesOperadores[0]); // +

        // Linha 2
        painelBotoes.add(botoesNumeros[4]); // 4
        painelBotoes.add(botoesNumeros[5]); // 5
        painelBotoes.add(botoesNumeros[6]); // 6
        painelBotoes.add(botoesOperadores[1]); // -

        // Linha 3
        painelBotoes.add(botoesNumeros[1]); // 1
        painelBotoes.add(botoesNumeros[2]); // 2
        painelBotoes.add(botoesNumeros[3]); // 3
        painelBotoes.add(botoesOperadores[2]); // *

        // Linha 4
        painelBotoes.add(botaoPonto);      // .
        painelBotoes.add(botoesNumeros[0]); // 0
        painelBotoes.add(botaoIgual);      // =
        painelBotoes.add(botoesOperadores[3]); // /

        // Linha 5 (botão Limpar)
        // Adiciona um espaço vazio para centralizar "C" ou expandi-lo
        painelBotoes.add(new JLabel()); // Espaço em branco
        painelBotoes.add(botaoLimpar);    // C
        painelBotoes.add(new JLabel()); // Espaço em branco
        painelBotoes.add(new JLabel()); // Espaço em branco

        add(painelBotoes, BorderLayout.CENTER); // Adiciona o painel de botões ao centro

        setVisible(true); // Torna a janela visível
    }

    // --- Tratamento de Eventos (o que acontece quando um botão é clicado) ---
    @Override
    public void actionPerformed(ActionEvent e) {
        String comando = e.getActionCommand(); // Pega o texto do botão clicado

        // Se for um número ou ponto
        if (comando.matches("[0-9]") || comando.equals(".")) {
            if (novoNumero) {
                // Se é um novo número, substitui o display
                if (comando.equals(".")) {
                    display.setText("0."); // Começa com "0." se o primeiro for ponto
                } else {
                    display.setText(comando);
                }
                novoNumero = false;
            } else {
                // Se não é um novo número, adiciona ao display existente
                if (comando.equals(".") && display.getText().contains(".")) {
                    // Não faz nada se já tem ponto e o comando é ponto
                    return;
                }
                display.setText(display.getText() + comando);
            }
        } // Se for um operador (+, -, *, /)
        else if (comando.matches("[+\\-*/]")) {
            primeiroNumero = Double.parseDouble(display.getText()); // Guarda o número atual
            operadorAtual = comando; // Guarda o operador
            novoNumero = true; // Próximo dígito inicia um novo número
        } // Se for o botão de igual (=)
        else if (comando.equals("=")) {
            if (!operadorAtual.isEmpty()) { // Garante que há uma operação pendente
                double segundoNumero = Double.parseDouble(display.getText()); // Pega o segundo número
                double resultado = 0;

                switch (operadorAtual) {
                    case "+":
                        resultado = primeiroNumero + segundoNumero;
                        break;
                    case "-":
                        resultado = primeiroNumero - segundoNumero;
                        break;
                    case "*":
                        resultado = primeiroNumero * segundoNumero;
                        break;
                    case "/":
                        if (segundoNumero != 0) { // Evita divisão por zero
                            resultado = primeiroNumero / segundoNumero;
                        } else {
                            display.setText("Erro: Divisão por zero!");
                            operadorAtual = ""; // Reseta o operador
                            primeiroNumero = 0; // Reseta o primeiro número
                            novoNumero = true;
                            return; // Sai do método para não processar mais
                        }
                        break;
                }
                // Exibe o resultado formatado para evitar muitas casas decimais se for inteiro
                if (resultado == (long) resultado) { // Se o resultado for um número inteiro
                    display.setText(String.format("%d", (long) resultado));
                } else {
                    display.setText(String.format("%.2f", resultado)); // Duas casas decimais para decimais
                }
                operadorAtual = ""; // Reseta o operador após o cálculo
                novoNumero = true; // Próximo clique inicia um novo número
            }
        } // Se for o botão Limpar (C)
        else if (comando.equals("C")) {
            display.setText("0"); // Reseta o display para 0
            operadorAtual = ""; // Limpa o operador
            primeiroNumero = 0; // Limpa o primeiro número
            novoNumero = true; // Permite iniciar um novo número
        }
    }

    // --- Método main para iniciar a aplicação ---
    public static void main(String[] args) {
        // Cria a interface gráfica na thread de despacho de eventos (EDT)
        // Isso garante que a interface seja responsiva e segura em relação a threads.
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new CalculadoraGUI(); // Cria uma nova instância da calculadora
            }
        });
    }
}
