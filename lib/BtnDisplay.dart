import 'package:flutter/material.dart';
import 'OperacoesAritmeticas.dart'; 

class BtnDisplay extends StatefulWidget {
  @override
  _BtnDisplayState createState() => _BtnDisplayState();
}

class _BtnDisplayState extends State<BtnDisplay> {
  final OperacoesAritmeticas operacoes = OperacoesAritmeticas();

}


//Vetor que contém os valores possíveis
escolhaOperacao[] = '+', '-', '/', '*';

void atualizarDisplay(String valor){
  setState((){
    resultado += valor;
  });
}


Widget criarBtn(String valor){
  //O parametro Expanded serve para preencher todo o espaço disponível 
  return Expanded(
    child: OutlinedButton(
      onPressed: (){
        if(valor == 'C'){
limparDisplay();
        }else if(valor == '='){
          calcularResultado();
        }else if(valor == escolhaOperacao){
          selecionarOperacao(valor);
        }else{
          atualizarDisplay(valor);
        }
      },
    ),
    child: Text(
      valor,
      style: TextStyle(fontSize: 30),
    )


  )

}