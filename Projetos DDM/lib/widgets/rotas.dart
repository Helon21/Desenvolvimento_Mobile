import 'package:aula_09_05_2023/widgets/Formulario.dart';
import 'package:aula_09_05_2023/widgets/Formulario2.dart';
import 'package:flutter/material.dart';

class Rotas extends StatelessWidget{
  const Rotas({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/': (context) => Formulario(),
        'Formulario': (context) => Formulario2()
      }
    );
  }
}