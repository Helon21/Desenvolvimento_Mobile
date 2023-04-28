import 'package:flutter/material.dart';

import 'Home.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Column(
        children: [
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Insira seu primeiro nome'),
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Insira seu sobrenome'),
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Insira seu email'),
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Insira sua senha'),
            obscureText: true,
            maxLength: 20,
          ),
          ElevatedButton(
            child: const Text('Finalizar cadastro'),
            onPressed: () {
              Route rota = MaterialPageRoute(builder: (context) => Home());
              Navigator.push(context, rota);
            },
          )
        ],
      ),
    );
  }
}
