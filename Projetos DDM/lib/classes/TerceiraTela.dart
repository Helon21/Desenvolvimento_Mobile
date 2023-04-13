
import 'package:aula_rotas/classes/QuartaTela.dart';
import 'package:flutter/material.dart';

class TerceiraTela extends StatelessWidget{
  const TerceiraTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Você está na terceira tela')),
      body: ElevatedButton(
        child: const Text('Quarta Tela'),
        onPressed: (){
          Route rota = MaterialPageRoute(builder: (context) => QuartaTela());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}