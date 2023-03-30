import 'package:calculadora_mobile/widgets/Calculadora.dart';
import 'package:flutter/material.dart';

class Configuracoes extends StatelessWidget{

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora Básica',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Calculadora(),
    );
  }

}