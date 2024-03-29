
import 'package:flutter/material.dart';

import 'PaginaInicial.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: ElevatedButton(
        child: const Text('Realizar Login'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => PaginaInicial());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}
