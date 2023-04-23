import 'package:app_calculadora_layout/models/memory.dart';
import 'package:flutter/material.dart';
import '../components/display.dart';
import '../components/teclado.dart';
class Calculadora extends StatefulWidget {
  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {

  final Memory memory = Memory();
  clique(String command){
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(children: <Widget>[
        Display(memory.value),
        Teclado(clique),
      ]),
    );
  }
}
