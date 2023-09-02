
import 'package:flutter/material.dart';

import 'Home.dart';

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
