import 'package:aula_rotas/classes/Home.dart';
import 'package:aula_rotas/classes/Login.dart';
import 'package:aula_rotas/classes/OitavaTela.dart';
import 'package:aula_rotas/classes/QuartaTela.dart';
import 'package:aula_rotas/classes/QuintaTela.dart';
import 'package:aula_rotas/classes/SegundaTela.dart';
import 'package:aula_rotas/classes/SetimaTela.dart';
import 'package:aula_rotas/classes/SextaTela.dart';
import 'package:aula_rotas/classes/TerceiraTela.dart';
import 'package:aula_rotas/classes/UltimaTela.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Um app para testar as rotas :D',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/': (context) => Login(),
        'login':(context) => Home(),
        'home':(context) => SegundaTela(),
        'segundaTela':(context) => TerceiraTela(),
        'terceiraTela':(context) => QuartaTela(),
        'quartaTela':(context) => QuintaTela(),
        'quintaTela':(context) => SextaTela(),
        'sextaTela': (context) => SetimaTela(),
        'setimaTela':(context) => OitavaTela(),
        'oitavaTela':(context) => UltimaTela(),
      },
    );
  }

}

