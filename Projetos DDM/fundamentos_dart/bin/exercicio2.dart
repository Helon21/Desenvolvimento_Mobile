/*
Exercício II
Pensar em um projeto único - quanto maior o escopo melhor - possibilita pensar em vários exemplos
Elabroar funções no escopo do projeto (autêntico)
Fazer comentários de tudo que entendeu
Elabore: 
1) Duas funções sem retorno e sem parâmetro; 
2) Duas funções sem retorno e com parâmetro; 
3) Duas funções com retorno e sem parâmetro;  
4) Duas funções com retorno e com parâmetro;
5) Duas funções com parâmetros opcionais (com o devido contexto);
6) Duas funções com parâmetros nomeados.

Exercício III
1) Em relação a sintaxe, quais são as variantes na escrita de uma função? Quais são as especificidades e em que caso pode-se utilziar cada uma?
*/

import 'dart:io';

void main(List<String> args) {
  registroDespesas();
}

void registroDespesas(){
  List<double> gastos = [];
  List<String> descricaoGastos = [];
  int i = 0;
  print("Insira seus gastos, quando quiser encerrar, digite FIM");
  while(gastos != null && descricaoGastos != null){
    print("Insira a despesa");
    gastos[i] = double.parse(stdin.readLineSync()!);
    print("Insira a descricao da despesa");
    descricaoGastos[i] = stdin.readLineSync()!;
    if(gastos[i] == "FIM"){
      break;
    }
  
  }
  


}