import 'package:flutter/material.dart';
import 'package:teste/rota.dart';
import 'package:teste/view/contato_detalhe.dart';
import 'package:teste/view/contato_form.dart';
import 'package:teste/view/contato_lista.dart';
import 'package:teste/view/widget/cidade_lista.dart';


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Rota.cidadeLista :(context) => const CidadeLista(),
        Rota.contatoLista :(context) => const ContatoLista(),
        Rota.contatoForm :(context) => const ContatoForm(),
        Rota.contatoDetalhe :(context) => const ContatoDetalhe(),
      }
    );
  }
}
