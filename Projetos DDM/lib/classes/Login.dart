import 'package:aula_rotas/classes/Home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Seja Bem Vindo(a), por favor faça login ou crie sua conta')),
      body: ElevatedButton(
        child: const Text('Home'),
        onPressed: (){
          Route rota = MaterialPageRoute(builder: (context) => Home());
          //Navigator.of(context).push(rota);
          Navigator.push(context, rota);
        },
      ),
    );
  }


}