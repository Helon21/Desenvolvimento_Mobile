import 'package:aula_dia_20_04_2023/classes/TelaInicial.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Column(
        children: [
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(hintText: 'Insira o nome de Usuário'),
          ),
          TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Insira sua senha',
            ),
            obscureText: true,
            maxLength: 20,
          ),
          ElevatedButton(
            child: const Text('Realizar Login'),
            onPressed: () {
              Route rota =
                  MaterialPageRoute(builder: (context) => TelaInicial());
              Navigator.push(context, rota);
            },
          )
        ],
      ),
    );
  }
}
