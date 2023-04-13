import 'package:aula_rotas/classes/App.dart';
import 'package:aula_rotas/classes/QuintaTela.dart';
import 'package:flutter/material.dart';

class QuartaTela extends StatelessWidget{
  const QuartaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Você está na Quarta Tela')),
      body: ElevatedButton(
        child: const Text('Quinta tela'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => QuintaTela());
          Navigator.push(context, rota);        
        },
      ),
    );
  }
}