import 'package:aula_rotas/classes/App.dart';
import 'package:aula_rotas/classes/SegundaTela.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Bem Vindo a primeira tela do app')),
      body: ElevatedButton(
        child: const Text('Segunda Tela'),
        onPressed: (){
          Route rota = MaterialPageRoute(builder: (context) => SegundaTela());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}

