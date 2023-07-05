import 'package:flutter/material.dart';
import 'package:reservas_hotel_2/Login.dart';

class Rotas extends StatelessWidget {
  const Rotas ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/': (context) => Login(),
        //'/home': (context) => Home(),
        //'/cadastro': (context) => Cadastro(),
        //'/reserva': (context) => Reserva(),
      },
    );
  }
}