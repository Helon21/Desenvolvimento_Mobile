
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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
