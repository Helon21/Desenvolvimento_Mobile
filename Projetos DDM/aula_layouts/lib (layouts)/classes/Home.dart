import 'package:aula_layouts/classes/Cadastro.dart';
import 'package:aula_layouts/classes/Login.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'Seja bem vindo, por favor faça login ou cadastre-se')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Login'),
              onPressed: () {
                Route rota = MaterialPageRoute(builder: (context) => Login());
                Navigator.push(context, rota);
              },
            ),
            ElevatedButton(
              child: const Text('Cadastro'),
              onPressed: () {
                Route rota =
                    MaterialPageRoute(builder: (context) => Cadastro());
                Navigator.push(context, rota);
              },
            )
          ],
        ),
      ),
    );
  }
}
