import 'package:path/path.dart';
import 'package:reservas_hotel_2/sqlite/scriptbd.dart';
import 'package:sqflite/sqflite.dart';

class Conexao{
  static late Database _database;
  static bool _fechado = true;

  static Future<Database> criar() async {
    if(_fechado){
      String path = join(await getDatabasesPath(), 'banco.db');
      deleteDatabase(path);
      _database = await openDatabase(
        path,
        version: 1,
        onCreate: (db,v){
          criarTabela.forEach(db.execute);
          //insercoes.forEach(db.execute);
        },
      );
      _fechado = false;
    }
    return _database;
  }
}

