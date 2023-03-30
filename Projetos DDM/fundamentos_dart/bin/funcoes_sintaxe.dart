import 'dart:io';
import 'package:fundamentos_dart/fundamentos_dart.dart';
void main(List<String> args) {
  print('sintaxe funções');
  verificarAprovacao2();
}
// sem retorno e sem parâmetro
void verificarAprovacao(){
  double nota1, nota2, media;

  print('Informe nota 1: ');
  nota1 = double.parse(stdin.readLineSync()!);

  print('Informe nota 2: ');
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2; 

  if(media >= 6.0){
    print('Aprovado');
  }else{
    print('Reprovado');
  }

  /* outra forma de fazer: 
    print((media >= 6) ? 'aprovado' : 'reprovado'); operador ternário.
  */

}

//Com retorno e sem parâmetro
String verificarAprovacao2(){
  double nota1, nota2, media;
  print('Informe nota1');
  nota1 = double.parse(stdin.readLineSync()!);
  
  print('Informe nota 2');
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2;

  if(media >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }
  // para ela é necessário usar uma variável que vai receber a função para armazenar seu resultado, depois printa-la
}

// função sem retorno e com parâmetro
void verificarAprovacao3(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  print((media >= 6) ? 'aprovado' : 'reprovado');
}

//função com retorno e com parãmetro
String verificarAprovacao4(double nota1, double nota2){
  var media = (nota1 + nota2) / 2;
  if(media >= 6){
    return 'aprovado';
  }else{
    return 'reprovado';
  }

  // também é possivel fazer desta forma: return (media > 6) ? 'aprovado' : 'reprovado';
}
