import 'package:aula_dia_20_04_2023/classes/Cadastro.dart';
import 'package:aula_dia_20_04_2023/classes/Home.dart';
import 'package:aula_dia_20_04_2023/classes/Login.dart';
import 'package:aula_dia_20_04_2023/classes/TelaInicial.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Um app para testar as rotas :D',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/': (context) => Home(),
        'Home': (context) => Login(),
        'Home': (context) => Cadastro(),
        'Login': (context) => TelaInicial(),
      },
    );
  }
}
