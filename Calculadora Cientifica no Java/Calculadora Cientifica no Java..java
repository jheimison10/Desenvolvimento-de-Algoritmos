/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */
package com.mycompany.calculadoracientifica;

/**
 *
 * @author Windows
 */
import javax.swing.*;       // Para componentes de interface gráfica (JFrame, JButton, JTextField, etc.)
import java.awt.*;          // Para layouts, cores e fontes
import java.awt.event.ActionEvent; // Para eventos de ação (clique de botão)
import java.awt.event.ActionListener; // Interface para tratamento de eventos
import java.text.DecimalFormat; // Para formatar a saída dos números

public class CalculadoraCientificaGUI extends JFrame implements ActionListener {

    // --- Componentes da Interface ---
    private JTextField display; // Onde os números e resultados são mostrados

    // Botões numéricos e básicos
    private JButton[] botoesNumeros; // Botões de 0 a 9
    private JButton botaoPonto;      // Botão .
    private JButton botaoIgual;      // Botão =
    private JButton botaoLimpar;     // Botão C (Clear)
    private JButton botaoApagar;     // Botão DEL (Backspace)
    private JButton botaoNegar;      // Botão +/-

    // Botões de operadores básicos
    private JButton botaoSoma;
    private JButton botaoSubtracao;
    private JButton botaoMultiplicacao;
    private JButton botaoDivisao;

    // Botões de funções científicas
    private JButton botaoRaizQuadrada; // sqrt
    private JButton botaoPotencia;     // x^y
    private JButton botaoSeno;         // sin
    private JButton botaoCosseno;      // cos
    private JButton botaoTangente;     // tan
    private JButton botaoLog;          // log (base 10)
    private JButton botaoLn;           // ln (logaritmo natural)
    private JButton botaoPi;           // π
    private JButton botaoFatorial;     // n!
    private JButton botaoInverso;      // 1/x

    // --- Variáveis de Lógica da Calculadora ---
    private String operadorAtual = "";  // Armazena o operador clicado (+, -, *, /, etc.)
    private double primeiroNumero = 0; // Armazena o primeiro número da operação
    private boolean novoNumero = true;  // Indica se o próximo dígito inicia um novo número
    private boolean operacaoPendente = false; // Indica se há uma operação esperando o segundo número

    // Formatador para a saída de números decimais
    private DecimalFormat decimalFormat = new DecimalFormat("#.##########"); // Até 10 casas decimais

    // --- Construtor da Calculadora ---
    public CalculadoraCientificaGUI() {
        setTitle("Calculadora Científica Java");
        setSize(400, 550); // Aumenta o tamanho para acomodar mais botões
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLayout(new BorderLayout());
        setLocationRelativeTo(null); // Centraliza a janela

        // --- Configuração do Display ---
        display = new JTextField("0");
        display.setFont(new Font("Arial", Font.BOLD, 36));
        display.setHorizontalAlignment(JTextField.RIGHT);
        display.setEditable(false);
        display.setBackground(Color.WHITE);
        display.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));
        add(display, BorderLayout.NORTH);

        // --- Painel Principal de Botões ---
        JPanel painelBotoes = new JPanel();
        // Layout de grade ajustado para mais botões (6 linhas, 5 colunas)
        painelBotoes.setLayout(new GridLayout(6, 5, 5, 5));
        painelBotoes.setBorder(BorderFactory.createEmptyBorder(10, 10, 10, 10));

        // --- Inicialização e Configuração dos Botões ---
        // Botões numéricos (0-9)
        botoesNumeros = new JButton[10];
        for (int i = 0; i < 10; i++) {
            botoesNumeros[i] = new JButton(String.valueOf(i));
            botoesNumeros[i].setFont(new Font("Arial", Font.BOLD, 20));
            botoesNumeros[i].addActionListener(this);
            botoesNumeros[i].setBackground(new Color(220, 220, 220));
        }

        // Botões de operações básicas e especiais
        botaoPonto = new JButton(".");
        botaoPonto.setFont(new Font("Arial", Font.BOLD, 20));
        botaoPonto.addActionListener(this);
        botaoPonto.setBackground(new Color(220, 220, 220));

        botaoIgual = new JButton("=");
        botaoIgual.setFont(new Font("Arial", Font.BOLD, 20));
        botaoIgual.addActionListener(this);
        botaoIgual.setBackground(new Color(0, 128, 0)); // Verde
        botaoIgual.setForeground(Color.WHITE);

        botaoLimpar = new JButton("C");
        botaoLimpar.setFont(new Font("Arial", Font.BOLD, 20));
        botaoLimpar.addActionListener(this);
        botaoLimpar.setBackground(new Color(200, 0, 0)); // Vermelho
        botaoLimpar.setForeground(Color.WHITE);

        botaoApagar = new JButton("DEL");
        botaoApagar.setFont(new Font("Arial", Font.BOLD, 20));
        botaoApagar.addActionListener(this);
        botaoApagar.setBackground(new Color(255, 140, 0)); // Laranja Escuro
        botaoApagar.setForeground(Color.WHITE);

        botaoNegar = new JButton("+/-");
        botaoNegar.setFont(new Font("Arial", Font.BOLD, 20));
        botaoNegar.addActionListener(this);
        botaoNegar.setBackground(new Color(180, 180, 180));

        botaoSoma = new JButton("+");
        botaoSoma.setFont(new Font("Arial", Font.BOLD, 20));
        botaoSoma.addActionListener(this);
        botaoSoma.setBackground(new Color(255, 165, 0));
        botaoSoma.setForeground(Color.WHITE);

        botaoSubtracao = new JButton("-");
        botaoSubtracao.setFont(new Font("Arial", Font.BOLD, 20));
        botaoSubtracao.addActionListener(this);
        botaoSubtracao.setBackground(new Color(255, 165, 0));
        botaoSubtracao.setForeground(Color.WHITE);

        botaoMultiplicacao = new JButton("*");
        botaoMultiplicacao.setFont(new Font("Arial", Font.BOLD, 20));
        botaoMultiplicacao.addActionListener(this);
        botaoMultiplicacao.setBackground(new Color(255, 165, 0));
        botaoMultiplicacao.setForeground(Color.WHITE);

        botaoDivisao = new JButton("/");
        botaoDivisao.setFont(new Font("Arial", Font.BOLD, 20));
        botaoDivisao.addActionListener(this);
        botaoDivisao.setBackground(new Color(255, 165, 0));
        botaoDivisao.setForeground(Color.WHITE);

        // Funções científicas
        botaoRaizQuadrada = new JButton("sqrt");
        botaoRaizQuadrada.setFont(new Font("Arial", Font.BOLD, 18));
        botaoRaizQuadrada.addActionListener(this);
        botaoRaizQuadrada.setBackground(new Color(173, 216, 230)); // Azul claro

        botaoPotencia = new JButton("x^y");
        botaoPotencia.setFont(new Font("Arial", Font.BOLD, 18));
        botaoPotencia.addActionListener(this);
        botaoPotencia.setBackground(new Color(173, 216, 230));

        botaoSeno = new JButton("sin");
        botaoSeno.setFont(new Font("Arial", Font.BOLD, 18));
        botaoSeno.addActionListener(this);
        botaoSeno.setBackground(new Color(173, 216, 230));

        botaoCosseno = new JButton("cos");
        botaoCosseno.setFont(new Font("Arial", Font.BOLD, 18));
        botaoCosseno.addActionListener(this);
        botaoCosseno.setBackground(new Color(173, 216, 230));

        botaoTangente = new JButton("tan");
        botaoTangente.setFont(new Font("Arial", Font.BOLD, 18));
        botaoTangente.addActionListener(this);
        botaoTangente.setBackground(new Color(173, 216, 230));

        botaoLog = new JButton("log"); // Base 10
        botaoLog.setFont(new Font("Arial", Font.BOLD, 18));
        botaoLog.addActionListener(this);
        botaoLog.setBackground(new Color(173, 216, 230));

        botaoLn = new JButton("ln"); // Logaritmo natural
        botaoLn.setFont(new Font("Arial", Font.BOLD, 18));
        botaoLn.addActionListener(this);
        botaoLn.setBackground(new Color(173, 216, 230));

        botaoPi = new JButton("π");
        botaoPi.setFont(new Font("Arial", Font.BOLD, 18));
        botaoPi.addActionListener(this);
        botaoPi.setBackground(new Color(173, 216, 230));

        botaoFatorial = new JButton("n!");
        botaoFatorial.setFont(new Font("Arial", Font.BOLD, 18));
        botaoFatorial.addActionListener(this);
        botaoFatorial.setBackground(new Color(173, 216, 230));

        botaoInverso = new JButton("1/x");
        botaoInverso.setFont(new Font("Arial", Font.BOLD, 18));
        botaoInverso.addActionListener(this);
        botaoInverso.setBackground(new Color(173, 216, 230));

        // --- Adiciona os botões ao painel em ordem (ajuste o layout para 5 colunas) ---
        // Linha 1: Funções científicas
        painelBotoes.add(botaoLimpar);      // C
        painelBotoes.add(botaoApagar);      // DEL
        painelBotoes.add(botaoNegar);       // +/-
        painelBotoes.add(botaoDivisao);     // /
        painelBotoes.add(botaoPotencia);    // x^y

        // Linha 2: Números e Operadores
        painelBotoes.add(botoesNumeros[7]); // 7
        painelBotoes.add(botoesNumeros[8]); // 8
        painelBotoes.add(botoesNumeros[9]); // 9
        painelBotoes.add(botaoMultiplicacao); // *
        painelBotoes.add(botaoRaizQuadrada); // sqrt

        // Linha 3: Números e Operadores
        painelBotoes.add(botoesNumeros[4]); // 4
        painelBotoes.add(botoesNumeros[5]); // 5
        painelBotoes.add(botoesNumeros[6]); // 6
        painelBotoes.add(botaoSubtracao);   // -
        painelBotoes.add(botaoSeno);        // sin

        // Linha 4: Números e Operadores
        painelBotoes.add(botoesNumeros[1]); // 1
        painelBotoes.add(botoesNumeros[2]); // 2
        painelBotoes.add(botoesNumeros[3]); // 3
        painelBotoes.add(botaoSoma);        // +
        painelBotoes.add(botaoCosseno);     // cos

        // Linha 5: Números e Operadores
        painelBotoes.add(botaoInverso);     // 1/x
        painelBotoes.add(botoesNumeros[0]); // 0
        painelBotoes.add(botaoPonto);       // .
        painelBotoes.add(botaoIgual);       // =
        painelBotoes.add(botaoTangente);    // tan

        // Linha 6: Funções Logarítmicas e Pi
        painelBotoes.add(botaoFatorial);    // n!
        painelBotoes.add(new JLabel(""));   // Espaço vazio
        painelBotoes.add(botaoLog);         // log
        painelBotoes.add(botaoLn);          // ln
        painelBotoes.add(botaoPi);          // π

        add(painelBotoes, BorderLayout.CENTER);

        setVisible(true);
    }

    // --- Tratamento de Eventos (Lógica da Calculadora) ---
    @Override
    public void actionPerformed(ActionEvent e) {
        String comando = e.getActionCommand(); // Pega o texto do botão clicado

        // --- Lógica para Números e Ponto Decimal ---
        if (comando.matches("[0-9]")) { // Se for um dígito (0-9)
            if (novoNumero) {
                display.setText(comando);
                novoNumero = false;
            } else {
                display.setText(display.getText() + comando);
            }
        } else if (comando.equals(".")) { // Se for o ponto decimal
            if (novoNumero) {
                display.setText("0."); // Se for o primeiro caractere, começa com "0."
                novoNumero = false;
            } else if (!display.getText().contains(".")) { // Adiciona o ponto apenas se não houver um
                display.setText(display.getText() + ".");
            }
        } // --- Lógica para Operadores Básicos (+, -, *, /) ---
        else if (comando.matches("[+\\-*/]")) {
            if (!operadorAtual.isEmpty() && operacaoPendente) {
                // Se já houver uma operação pendente e o usuário clicar em outro operador,
                // tenta calcular o resultado parcial antes de definir o novo operador.
                // Isso é uma simplificação para não implementar a precedência completa.
                calcularResultado();
            }
            primeiroNumero = Double.parseDouble(display.getText());
            operadorAtual = comando;
            novoNumero = true;
            operacaoPendente = true;
        } // --- Lógica para o Botão de Igual (=) ---
        else if (comando.equals("=")) {
            if (operacaoPendente) {
                calcularResultado();
                operacaoPendente = false; // A operação foi concluída
                operadorAtual = "";        // Limpa o operador
            }
        } // --- Lógica para Limpar (C) ---
        else if (comando.equals("C")) {
            display.setText("0");
            operadorAtual = "";
            primeiroNumero = 0;
            novoNumero = true;
            operacaoPendente = false;
        } // --- Lógica para Apagar (DEL) ---
        else if (comando.equals("DEL")) {
            String textoAtual = display.getText();
            if (textoAtual.length() > 1 && !novoNumero) {
                display.setText(textoAtual.substring(0, textoAtual.length() - 1));
            } else {
                display.setText("0");
                novoNumero = true;
            }
        } // --- Lógica para Negar (+/-) ---
        else if (comando.equals("+/-")) {
            double valorAtual = Double.parseDouble(display.getText());
            display.setText(decimalFormat.format(-valorAtual));
            novoNumero = false; // Continua editando este número
        } // --- Funções Científicas (Operações Unárias) ---
        else if (comando.equals("sqrt")) {
            double valor = Double.parseDouble(display.getText());
            if (valor >= 0) {
                display.setText(decimalFormat.format(Math.sqrt(valor)));
            } else {
                display.setText("Erro");
            }
            novoNumero = true; // Próxima entrada começa um novo número
        } else if (comando.equals("sin")) {
            double valor = Double.parseDouble(display.getText());
            display.setText(decimalFormat.format(Math.sin(Math.toRadians(valor)))); // Converte para radianos
            novoNumero = true;
        } else if (comando.equals("cos")) {
            double valor = Double.parseDouble(display.getText());
            display.setText(decimalFormat.format(Math.cos(Math.toRadians(valor))));
            novoNumero = true;
        } else if (comando.equals("tan")) {
            double valor = Double.parseDouble(display.getText());
            display.setText(decimalFormat.format(Math.tan(Math.toRadians(valor))));
            novoNumero = true;
        } else if (comando.equals("log")) { // Logaritmo base 10
            double valor = Double.parseDouble(display.getText());
            if (valor > 0) {
                display.setText(decimalFormat.format(Math.log10(valor)));
            } else {
                display.setText("Erro");
            }
            novoNumero = true;
        } else if (comando.equals("ln")) { // Logaritmo natural
            double valor = Double.parseDouble(display.getText());
            if (valor > 0) {
                display.setText(decimalFormat.format(Math.log(valor)));
            } else {
                display.setText("Erro");
            }
            novoNumero = true;
        } else if (comando.equals("π")) {
            display.setText(decimalFormat.format(Math.PI));
            novoNumero = true;
        } else if (comando.equals("n!")) {
            try {
                int num = Integer.parseInt(display.getText());
                if (num < 0) {
                    display.setText("Erro"); // Fatorial de negativo não definido
                } else if (num > 20) { // Fatorial de 21 já ultrapassa o limite de long
                    display.setText("Muito Grande!");
                } else {
                    display.setText(String.valueOf(calcularFatorial(num)));
                }
            } catch (NumberFormatException ex) {
                display.setText("Erro");
            }
            novoNumero = true;
        } else if (comando.equals("1/x")) {
            double valor = Double.parseDouble(display.getText());
            if (valor != 0) {
                display.setText(decimalFormat.format(1 / valor));
            } else {
                display.setText("Erro");
            }
            novoNumero = true;
        }
    }

    // --- Método Auxiliar para Calcular Fatorial ---
    private long calcularFatorial(int n) {
        if (n == 0) {
            return 1;
        }
        long res = 1;
        for (int i = 1; i <= n; i++) {
            res *= i;
        }
        return res;
    }

    // --- Método Auxiliar para Calcular o Resultado de Operações Binárias ---
    private void calcularResultado() {
        double segundoNumero = Double.parseDouble(display.getText());
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
                if (segundoNumero != 0) {
                    resultado = primeiroNumero / segundoNumero;
                } else {
                    display.setText("Erro: Divisão por zero!");
                    operadorAtual = "";
                    primeiroNumero = 0;
                    novoNumero = true;
                    operacaoPendente = false;
                    return; // Sai sem atualizar o resultado normal
                }
                break;
            case "x^y": // Potência
                resultado = Math.pow(primeiroNumero, segundoNumero);
                break;
        }
        display.setText(decimalFormat.format(resultado));
        primeiroNumero = resultado; // O resultado se torna o primeiro número para cadeias de operações
        novoNumero = true;
    }

    // --- Método main para iniciar a aplicação ---
    public static void main(String[] args) {
        SwingUtilities.invokeLater(new Runnable() {
            @Override
            public void run() {
                new CalculadoraCientificaGUI();
            }
        });
    }
}
