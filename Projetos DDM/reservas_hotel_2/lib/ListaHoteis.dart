import 'package:flutter/material.dart';
import 'package:reservas_hotel_2/Hotel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ListaHoteis extends StatefulWidget {
  const ListaHoteis({super.key});

  @override
  State<ListaHoteis> createState() => _ListaHoteisState();
}

class _ListaHoteisState extends State<ListaHoteis>{
  late Database _database;
  List<Hotel> _hoteis = [];

  @override
  void initState() {
    super.initState();
    _openDatabase().then((_) {
      _buscarHoteis();
    });
  }

  Future<void> _openDatabase() async {
    String path = join(await getDatabasesPath(), 'hoteis.db');
  }

} 



class _ListaHoteisState extends State<ListaHoteis> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}