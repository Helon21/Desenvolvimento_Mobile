import 'package:aula_18_05_2023/view/dto/contato.dart';

abstract class ContatoInterfaceDAO{
  Contato salvar(Contato contato);
  bool excluir(dynamic id);
  Future<Contato> consultar(int id);
  Future<List<Contato>>  consultarTodos();
}