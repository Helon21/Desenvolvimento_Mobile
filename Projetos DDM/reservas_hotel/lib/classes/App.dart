
import 'package:flutter/material.dart';
import 'package:reservas_hotel/classes/cadastro.dart';
import 'package:reservas_hotel/classes/detalhes_reserva.dart';
import 'package:reservas_hotel/classes/historico_hoteis.dart';
import 'package:reservas_hotel/classes/home.dart';
import 'package:reservas_hotel/classes/lista_hoteis.dart';
import 'package:reservas_hotel/classes/login.dart';
import 'package:reservas_hotel/classes/tela_inicial.dart';

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
        'home': (context) => Login(),
        'home': (context) => Cadastro(),
        'login': (context) => TelaInicial(),
        'tela_inicial': (context) => ListaHoteis(),
        'tela_inicial': (context) => HistoricoHoteis(),
        'lista_hoteis': (context) => DetalhesReserva(),
      },
    );
  }
}
