class Contato{
  final dynamic id;
  final String nome;
  final String email;
  final String telefone;
  final String endereco;
  final String urlAvatar;


  Contato({
    this.id,
    required this.nome,
    required this.telefone,
    required this.email,
    required this.urlAvatar,
    required this.endereco
  });

  
  String toString() {
    return '''
      $id,
      $nome,
      $telefone,
      $email,
      $urlAvatar,
    ''';
  }

}