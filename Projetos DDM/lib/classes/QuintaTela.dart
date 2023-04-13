import 'package:aula_rotas/classes/SextaTela.dart';
import 'package:flutter/material.dart';

class QuintaTela extends StatelessWidget{
  const QuintaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Você está na quinta tela')),
      body: ElevatedButton(
        child: const Text('Sexta Tela'),
        onPressed: (){
          Route rota = MaterialPageRoute(builder: (context) => SextaTela());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}