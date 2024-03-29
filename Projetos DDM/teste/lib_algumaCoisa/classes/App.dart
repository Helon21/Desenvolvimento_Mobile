
import 'package:flutter/material.dart';

import 'Cadastro.dart';
import 'Home.dart';
import 'Login.dart';

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
      },
    );
  }
}
