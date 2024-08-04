
// declara o nome da classse que será instanciada no arquivo principal
class OperacoesAritmeticas {
//método para somar dois números
  double Adicao(double nm1, double nm2) {
    try{
      return nm1 + nm2;
    }catch(e){
        throw Exception("Não foi possível fazer a operação de adição");
    }
  }

  double Subtracao(double nm1, double nm2){
    try{
      return nm1 - nm2;
    }catch(e){
        throw Exception("Não foi possível fazer a operação de subtração");
    }
  }

  double Divisao(double nm1, double nm2){
    // verfica se o divisor não é igual a zero
    if (nm2 == 0) {
      throw Exception("Não é possível dividir por zero")
    }
    try{
      return nm1 / nm2;
    }catch(e){
        throw Exception("Não foi possível fazer a operação de divisão");
    }
  }

  double Multiplicacao(double nm1, double nm2){
    try{
        return nm1 * nm2;
    }catch(e){
      throw Exception("Não foi possível fazer a operação de multiplicação");
    }

  }
}
