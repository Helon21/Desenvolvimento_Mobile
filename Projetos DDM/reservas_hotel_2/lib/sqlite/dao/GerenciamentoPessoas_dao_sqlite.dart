import 'dart:convert';

import 'package:reservas_hotel_2/Dto/Contato.dart';
import 'package:reservas_hotel_2/Interface/ContatoInterfaceDao.dart';
import 'package:reservas_hotel_2/sqlite/Conexao.dart';
import 'package:sqflite/sqflite.dart';

class GerenciamentoPessoasDAOSQLite implements ContatoInterfaceDao{

  @override
  Future<Contato> buscarPorId(int id) async{
    Database db = await Conexao.criar();
    Map resultado = (await db.query('Pessoa', where: 'id = ?', whereArgs: [id])).first;
    if(resultado.isEmpty) throw Exception('Não foi possível achar este registro de Hóspede com este id');
    return converter(resultado);
  }
  
  @override
  Future<List<Contato>> consultarTodos() async{
    Database db = await Conexao.criar();
    List<Map<dynamic, dynamic>> resultadoBD = await db.query('pessoa');
    List<Contato> lista = [];
    for(var registro int resultadoBD){
      var pessoa = await converter(registro);
      lista.add(pessoa);
    }
    return lista;
  }

  @override
  Future<bool> excluir(id) async {
    Database db = await Conexao.criar();
    var sql = 'DELETE FROM pessoa WHERE id = ?';
    int linhasAfetas = await db.rawDelete(sql, [id]);
    return linhasAfetas > 0;
  }

  @override
  Future<Contato> salvar(Contato contato) async {
    Database db = await Conexao.criar();
    String sql;
    if(contato.id == null){
      sql = 'INSERT INTO contato (nome, telefone, email, url_avatar, reserva_id) VALUES (?,?,?,?,?)';
      int id = await db.rawInsert(sql,[contato.nome, contato.telefone, contato.email, contato.urlAvatar, reserva_id]);
    }
  }


}