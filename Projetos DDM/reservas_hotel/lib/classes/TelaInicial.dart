import 'package:flutter/material.dart';

import 'HistoricoHoteis.dart';
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
          ElevatedButton(
            child: const Text('Ver lista de Hotéis'),
            onPressed: () {
              Route rota = MaterialPageRoute(builder: (context) => ListaHoteis());
              Navigator.push(context, rota);
            },
          ),
          ElevatedButton(
            child: const Text('Histórico de reservas'),
            onPressed: () {
              Route rota = MaterialPageRoute(builder: (context) => HistoricoHoteis());
              Navigator.push(context, rota);
            },
          ),
        ],
      ),
    );
  }
}
