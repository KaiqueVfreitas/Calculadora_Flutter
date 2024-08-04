import 'package:flutter/material.dart';
import 'OperacoesAritmeticas.dart';

// Define a classe BtnDisplay que estende StatefulWidget, statefulwidget é usado para atualizações em tempo real
class BtnDisplay extends StatefulWidget {
  @override
  _BtnDisplayState createState() => _BtnDisplayState();
}

// Define a classe _BtnDisplayState que gerencia o estado de BtnDisplay
class _BtnDisplayState extends State<BtnDisplay> {
  // Instância da classe OperacoesAritmeticas
  final OperacoesAritmeticas operacoes = OperacoesAritmeticas();
  
  // Variáveis para armazenar os números e a operação selecionada
  double primeiroNumero = 0;
  double segundoNumero = 0;
  String operacaoSelecionada = '';
  String resultado = '';

  // Vetor que contém os valores possíveis para operações
  final List<String> escolhaOperacao = ['+', '-', '/', '*'];

  // Método para atualizar o display da calculadora
  void atualizarDisplay(String valor) {
    setState(() {
      resultado += valor;
    });
  }

  // Método para limpar o display da calculadora
  void limparDisplay() {
    setState(() {
      resultado = '';
      primeiroNumero = 0;
      segundoNumero = 0;
      operacaoSelecionada = '';
    });
  }

  // Método para selecionar a operação aritmética
  void selecionarOperacao(String operacao) {
    setState(() {
      primeiroNumero = double.parse(resultado);
      resultado = '';
      operacaoSelecionada = operacao;
    });
  }

  // Método para calcular o resultado com base na operação selecionada
  void calcularResultado() {
    setState(() {
      segundoNumero = double.parse(resultado);
      switch (operacaoSelecionada) {
        case '+':
          resultado = operacoes.Adicao(primeiroNumero, segundoNumero).toString();
          break;
        case '-':
          resultado = operacoes.Subtracao(primeiroNumero, segundoNumero).toString();
          break;
        case '*':
          resultado = operacoes.Multiplicacao(primeiroNumero, segundoNumero).toString();
          break;
        case '/':
          resultado = operacoes.Divisao(primeiroNumero, segundoNumero).toString();
          break;
      }
      operacaoSelecionada = '';
    });
  }

  // Método para criar os botões da calculadora
  Widget criarBotao(String valor) {
    return Expanded(
      child: OutlinedButton(
        onPressed: () {
          if (valor == 'C') {
            limparDisplay();
          } else if (valor == '=') {
            calcularResultado();
          } else if (escolhaOperacao.contains(valor)) {
            selecionarOperacao(valor);
          } else {
            atualizarDisplay(valor);
          }
        },
        child: Text(
          valor,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                resultado,
                style: TextStyle(fontSize: 40),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                // Primeira linha de botões (7, 8, 9, /)
                Row(
                  children: [
                    criarBotao('7'),
                    criarBotao('8'),
                    criarBotao('9'),
                    criarBotao('/'),
                  ],
                ),
                // Segunda linha de botões (4, 5, 6, *)
                Row(
                  children: [
                    criarBotao('4'),
                    criarBotao('5'),
                    criarBotao('6'),
                    criarBotao('*'),
                  ],
                ),
                // Terceira linha de botões (1, 2, 3, -)
                Row(
                  children: [
                    criarBotao('1'),
                    criarBotao('2'),
                    criarBotao('3'),
                    criarBotao('-'),
                  ],
                ),
                // Quarta linha de botões (0, C, =, +)
                Row(
                  children: [
                    criarBotao('0'),
                    criarBotao('C'),
                    criarBotao('='),
                    criarBotao('+'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
