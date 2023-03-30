/*https://dontpad.com/ddmifpr

Exercício I
Para cada variante de função que estudamos elaborar a seguinte função:
→ função calularSalario - precisa do (i) valor salario e o (ii) valor do desconto. Permitir o desconto somente se haver saldo. No final informar o saldo.

*/

import 'dart:io';

void main(List<String> args) {
  print(calcularSalario4(1750.65, 15));
}
//função sem retorno e sem parâmetro; 
void calcularSalario(){
  double salario, desconto, saldo;
  salario = double.parse(stdin.readLineSync()!);
  desconto = double.parse(stdin.readLineSync()!);

  saldo = salario - desconto;

  if(saldo < 0){
    print("Saldo Insuficiente");
    saldo = salario;
  }
  else{
    print("Desconto aplicado!!!");
  }
  print("Saldo atual: $saldo");

}

// função sem retorno e com parâmetro

void calcularSalario2(double salario, double desconto){
  salario = double.parse(stdin.readLineSync()!);
  desconto = double.parse(stdin.readLineSync()!);
  
  double saldo = salario - desconto;

  if(saldo < 0){
    print('Sem saldo, desconto não aplicado');
  }

  else{
    print('Desconto aplicado com sucesso!!!');
  }

  print('Saldo atual: $saldo');  

}

// função com retorno e sem parâmetro

double calcularSalario3(){
  double salario, desconto, saldo;

  salario = double.parse(stdin.readLineSync()!);
  desconto = double.parse(stdin.readLineSync()!);

  saldo = salario - desconto;

  if(saldo < 0){
    print("Desconto não aplicado por falta de saldo");
    return salario;
  }
  else{
    print("Desconto aplicado");
    return saldo;
  }

}


//função com retorno e com parâmetro

double calcularSalario4(double salario, double desconto){
  double saldo = salario - (salario * (desconto / 100));

  if(saldo < 0){
    print("Seu salário é insuficiente, então não haverá descontos");
    return salario;
  }

  else{
    print("Desconto aplicado com sucesso!!!");
    return saldo;
  }


}