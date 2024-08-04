//declara o nome da classse que será instanciada no arquivo principal
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
        throw Exception("Não foi possível fazer a operação de adição");
    }
  }
  double Divisão(double nm1, double nm2{
    return nm1/nm2;
  }
  double Multiplicacao(double nm1, double nm2){
    return nm1*nm2;
  }
}
