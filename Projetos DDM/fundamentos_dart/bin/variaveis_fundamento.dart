import 'package:fundamentos_dart/fundamentos_dart.dart' as fundamentos_dart;

void main(List<String> arguments) {

print('Fundamentos de variáveis');

int idade = 19;
double peso = 80.5;
String nome = 'Helon';
String sobrenome = 'Bentes Bastos Xavier';
bool eProgramador = true;

print(idade);

print(nome + ' ' + sobrenome);

print("INSERT INTO pessoa (nome, sobrenome) VALUES ('" + nome + "', '" + sobrenome + "')");

print("INSERT INTO pessoa (nome, sobrenome) VALUES ('$nome', '$sobrenome')");

String teste = 'teste ${5 > 0}';
String nomeCompleto = '$nome $sobrenome';

print('\n linha 1 ' + 
'\n linha 2'
'\n linha 3');

print(''' 
  Linha 1
  Linha 2
  Linha 3
''');

/*

Atividade 01 - Defina variáveis de um produto (com diversos tipos) e imprima com as devidas descrições;

Atividade 02 - Conforme o seu projeto particular definir as variáveis de um modelo e imprima na tela.

*/

// Atividade 1: 

String marcaShampoo = 'Pantene';
double precoShampoo = 15.00;
double quantidadeMl = 400.0;
int quantidadeEmEstoque = 140;
bool antiCaspa = false;
String eAntiCaspa = '';

if(antiCaspa == false){
  eAntiCaspa = 'Não é anti caspa';
}

print('''
  O shampoo da marca $marcaShampoo, cujo o preço é de $precoShampoo reais possui $quantidadeMl ML.
  Este produto ainda tem $quantidadeEmEstoque unidades em estoque. $eAntiCaspa
''');

}
