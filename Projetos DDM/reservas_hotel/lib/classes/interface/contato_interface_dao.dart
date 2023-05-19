
import 'package:reservas_hotel/classes/dto/contato.dart';

abstract class Contato_interface_dao{
  Contato salvar(Contato contato);
  bool excluir(dynamic id);
  Future<Contato> consultar(int id);
  Future<List<Contato>> consultarTodos();
}