// Arquivo que fica no back-end só fazendo as funções do aplicativo
class OperacoesAritmeticas {
  // Método para somar dois números
  double Adicao(double num1, double num2) {
    try {
      return num1 + num2;
    } catch (e) {
      throw Exception("Não foi possível fazer a operação de adição");
    }
  }

  // Método para subtrair dois números
  double Subtracao(double num1, double num2) {
    try {
      return num1 - num2;
    } catch (e) {
      throw Exception("Não foi possível fazer a operação de subtração");
    }
  }

  // Método para dividir dois números
  double Divisao(double num1, double num2) {
    // Verifica se o divisor é zero para evitar divisão por zero
    if (num2 == 0) {
      throw Exception("Não é possível dividir por zero");
    }
    try {
      return num1 / num2;
    } catch (e) {
      throw Exception("Não foi possível fazer a operação de divisão");
    }
  }

  // Método para multiplicar dois números
  double Multiplicacao(double num1, double num2) {
    try {
      return num1 * num2;
    } catch (e) {
      throw Exception("Não foi possível fazer a operação de multiplicação");
    }
  }
}
