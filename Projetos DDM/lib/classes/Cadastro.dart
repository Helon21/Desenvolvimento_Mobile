import 'package:aula_layouts/classes/Home.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: ElevatedButton(
        child: const Text('Finalizar cadastro'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => Home());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}
