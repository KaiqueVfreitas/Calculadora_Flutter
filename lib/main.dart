import 'package:flutter/material.dart';
import 'BtnDisplay.dart';

// Função principal que inicia o aplicativo Flutter
void main() {
  runApp(CalculadoraApp());
}

// Classe principal que define o aplicativo Flutter
class CalculadoraApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BtnDisplay(),
    );
  }
}
