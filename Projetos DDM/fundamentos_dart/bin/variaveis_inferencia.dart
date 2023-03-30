import 'package:fundamentos_dart/fundamentos_dart.dart';
import 'dart:io';

void main(List<String> arguments) {
  
  print('Fundamentos de variáveis');

  String nome;
  print('Informe o seu nome: ');
  nome = stdin.readLineSync()!;

  /* Atividade 03 ao inves de atribuir valores, solicite dados*/

  //Atividade 3:

  int idade;
  print('Informe a sua idade: ');
  String? entradaIdade = stdin.readLineSync();
  
  if(entradaIdade != null){
    idade = int.parse(entradaIdade);
  }
  else{
    print("Digite apenas números");
  }

  double peso;
  print('Informe seu peso: ');
  String? entradaPeso = stdin.readLineSync();

  if(entradaPeso != null){
    print("Informe apenas números");
    peso = double.parse(entradaPeso);
  }else{
    print("Digite apenas números");
  }

}
