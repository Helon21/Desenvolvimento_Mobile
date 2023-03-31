import 'package:flutter/cupertino.dart';
import 'package:revisao_poo/classes/aluno.dart';
import 'package:revisao_poo/classes/aluno2.dart';
import 'package:revisao_poo/classes/aluno3.dart';
import 'package:revisao_poo/classes/aluno4.dart';
import 'package:revisao_poo/classes/professor.dart';

void main(List<String> args) {
  print('aula');

  Aluno aluno = new Aluno();
  
  new Aluno();
  //ou var aluno = Aluno();

  aluno.nome = 'João';
  aluno.RA = '325455-12';
  aluno.CPF = '123.456.789-10';

  print('${aluno.nome} ${aluno.RA}');

  Professor professor = new Professor('Rick', 15, '147457-8');

  professor.chamadaAlunos('Scarlet', 'Steffanny');
  professor.anonymous();
  professor.numeroAlunosTotal(50, 35);


  var aluno2 = Aluno2('4154-78', 'Henry','145.145.145-87', 15);

  print('${aluno2.nome} ${aluno.RA}');


  var aluno3 = Aluno3(RA:'145.475-87', nome:'Willian', CPF: '178.457.458-87', idade: 20);

  print('${aluno.nome} ${aluno.RA}');
  print('${aluno2.nome} ${aluno.RA}');
  print('${aluno3.nome} ${aluno3.RA}');

  //print('${Aluno3(RA: ${47878-87} nome: ${'Estiven'}, CPF: ${'457.454.878-45'}, idade: ${24})}');

  var aluno4 = Aluno4(RA:'145778-87', nome: 'Kelly', idade: 25, CPF: '147.145.875-87', minhaFuncao: umaFuncao);


} 

void umaFuncao(){
  print('Obaa uma função :D ');
}