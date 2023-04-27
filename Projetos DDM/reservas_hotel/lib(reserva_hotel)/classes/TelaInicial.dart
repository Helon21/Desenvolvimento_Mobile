import 'package:flutter/material.dart';

import 'ListaHoteis.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página Inicial')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            child: TextFormField(),
          ),
          ElevatedButton(
            child: const Text('Ver lista de Hotéis'),
            onPressed: () {
              Route rota = MaterialPageRoute(builder: (context) => ListaHoteis());
              Navigator.push(context, rota);
            },
          ),
        ],
      ),
    );
  }
}
