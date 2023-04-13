
import 'package:aula_rotas/classes/TerceiraTela.dart';
import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget{
  const SegundaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Você está na segunda tela')),
      body: ElevatedButton(
        child: const Text('Terceira Tela'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => TerceiraTela());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}