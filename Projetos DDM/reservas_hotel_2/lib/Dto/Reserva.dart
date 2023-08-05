import 'package:reservas_hotel_2/Dto/Contato.dart';

class Reserva {
  final dynamic id;
  final String nome;
  final Contato contato;
  Reserva({
    required this.id;
    required this.nomeHotel;
    required this.endereco;
    required this.horaEntrada;
    required this.horaSaida;
    required this.numeroQuarto;
  });

  @override
  bool operator ==(other) =>
  other is Contato && 
  other.nome == nome && 
  other.id == id;

  @override
  String toString(){
    return ''' 
    $id
    $nome
    ''';
  }
}