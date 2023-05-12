import 'package:flutter_application_8/view/dto/contato.dart';
import 'package:flutter_application_8/view/interface/contato_dao_interface.dart';

class ContatoDAO implements ContatoDaoInterface{
  var listaContatos = <Contato>[
    Contato.dados(
      id: 1,
      nome: 'Leonardo da Vinci',
      email: 'monalisa@gmail.com',
      telefone: '(44) 99854-8569',
      URLAvatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSE2WXX3uvHb8OKjdqI-gwCxS8UkPaNnJLGDR0wEm1g88YUle1bXrpEWYAXA2JZXlM_X1Q&usqp=CAU'),

    Contato.dados(
        id: 2,
        nome: 'Helon Musk',
        email: 'teslaCoFounderAndCEO@gmail.com',
        telefone: '(44) 96744-8569',
        URLAvatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBm8XeIM3Xfg1pznYHjwGW4JZNJsu5baIQ9Q&usqp=CAU'),

    Contato.dados(
        id: 3,
        nome: 'Alan Turing',
        email: 'teoriadacomputacao@hotmail.com',
        telefone: '(44) 96434-5749',
        URLAvatar: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7NYmYmGwEBanKj213FCNP6SNPPaFuWuTCZt9mcAXHyery8gCIDVmYgoesVW4bjMqFkGY&usqp=CAU'),

  ];


  @override
  Future <Contato> alterar(Contato contato) {
   print(contato);
   return Future.value(contato);

  }

  @override
  Future <Contato> buscar(id) {
    return Future.value(listaContatos[id-1]);
  }

  @override
  Future <List<Contato>> buscarTodos() {
    return Future.value(listaContatos);
  }

  @override
  Future <bool> excluir(id) {
   print(id);
   return Future.value(true);
  }

  @override
  Future <Contato> salvar(Contato contato) {
    print(contato);
    return Future.value(contato);
  }}
