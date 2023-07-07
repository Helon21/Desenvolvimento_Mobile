import 'package:reservas_hotel_2/Dto/Contato.dart';

abstract class ContatoInterfaceDao {
  Contato salvar(Contato contato);
  bool excluir(dynamic id);
  Future<Contato> buscarPorId(dynamic id);
  Future<List<Contato>> buscarTodos();
}