import 'package:flutter/material.dart';

class BotaoAdicionar extends StatelessWidget {
  final VoidCallback click;
  const BotaoAdicionar({required this.click, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: () => click(), tooltip: 'Adicionar Novo', child: const Icon(Icons.add));
  }
}
