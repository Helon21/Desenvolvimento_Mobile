
import 'package:flutter/material.dart';

import 'SetimaTela.dart';

class SextaTela extends StatelessWidget{
  const SextaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Você está na sexta tela')),
      body: ElevatedButton(
        child: const Text('Sétima tela'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => SetimaTela());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}