import 'package:flutter/material.dart';
import 'Cadastro.dart';
import 'DetalhesReserva.dart';
import 'HistoricoHoteis.dart';
import 'Home.dart';
import 'ListaHoteis.dart';
import 'Login.dart';
import 'TelaInicial.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de reservas de Hotel',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/': (context) => Home(),
        'Home': (context) => Login(),
        'Home': (context) => Cadastro(),
        'Login': (context) => TelaInicial(),
        'TelaInicial': (context) => ListaHoteis(),
        'TelaInicial': (context) => HistoricoHoteis(),
        'ListaHoteis': (context) => DetalhesReserva(),
      },
    );
  }
}
