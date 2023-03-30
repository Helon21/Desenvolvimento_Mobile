lib é onde definimos o código

pubspec é um gerenciador de dependências

insert no banco de dados:   INSERT INTO pessoa (nome, sobrenome) VALUES ('Helon, Bentes Bastos Xavier');

concatenação usando um insert no banco de dados: print("INSERT INTO pessoa (nome, sobrenome) VALUES (' " + nome + "', ' " + sobrenome + " ')");

em uma variável simples, não é necessário usar as chaves na interpolação, porém onde tiver alguma expressão ou algo do tipo, é necessário colocar entre chaves

por exemplo ${5 > 0};

quebras de prints exemplo: print('\n linha1 ' + 
'\n linha 2');
é necessário uso do contra barra N.

Também é possível quebrar as linhas após usar três aspas, sejam elas duplas ou simples, ex:

print(''' 
  Linha 1
  Linha 2
  Linha 3
''');

Variáveis de inferência, podem ser usadas quando não se sabe o valor, quando há atribuição.
Declarar variáveis com tipos podem ser utilizadas quando a variável não tem nenhuma atribuição.

para solicitar valores, é necessário importar a dart IO, significado dart input/output.

stdin.readLineSync() é uma função que pode ser usada para pedir um input.

Quando você coloca exclamação, por exemplo  stdin.readLineSync()! , ele converte um valor nulo para um não nulo. Porém se o usuário digitar nulo, não irá funcionar.

Conversão de dados: String para int = int.parse
String para double = double.parse
int para String = valor.toString()

existem funções sem retorno e sem parâmetro
funções sem retorno e com parâmetro
funções com retorno e sem parâmetro
funções com retorno e com parâmetro