import 'package:aula_rotas/classes/UltimaTela.dart';
import 'package:flutter/material.dart';

class OitavaTela extends StatelessWidget{
  const OitavaTela({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Você está na oitava tela')),
      body: ElevatedButton(
        child: const Text('Última Tela'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) => UltimaTela());
          Navigator.push(context, rota);
        },
      ),
    );
  }
}