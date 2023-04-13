import 'package:aula_rotas/classes/OitavaTela.dart';
import 'package:flutter/material.dart';

class SetimaTela extends StatelessWidget{
  const SetimaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Você está na sétima tela')),
      body: ElevatedButton(
        child: const Text('Oitava Página'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => OitavaTela());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}