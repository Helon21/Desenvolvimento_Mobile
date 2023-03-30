import 'package:flutter/material.dart';
import 'package:segundo_projeto/telas/home.dart';
import 'package:segundo_projeto/telas/segundaTela.dart';

class App extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Um app aleatório passando no seu pc',
      home: SegundaTela(
        
      ),
    );
  }
}