import 'package:aula_18_05_2023/database/daofake/contato_dao_fake.dart';
import 'package:aula_18_05_2023/rota.dart';
import 'package:aula_18_05_2023/view/dto/contato.dart';
import 'package:aula_18_05_2023/view/interface/contato_interface_dao.dart';
import 'package:aula_18_05_2023/view/widget/barra_navegacao.dart';
import 'package:aula_18_05_2023/view/widget/botao_adicionar.dart';
import 'package:aula_18_05_2023/view/widget/foto_contato.dart';
import 'package:aula_18_05_2023/view/widget/painel_botoes.dart';
import 'package:flutter/material.dart';


class ContatoLista extends StatefulWidget {
  ContatoLista({Key? key}) : super(key: key);

  @override
  State<ContatoLista> createState() => _ContatoListaState();
}

class _ContatoListaState extends State<ContatoLista> {
  ContatoInterfaceDAO dao = ContatoDAOFake();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista Contatos')),
      body: criarLista(context),
      floatingActionButton: BotaoAdicionar(acao: ()=>Navigator.pushNamed(context, Rota.contatoForm)),
      bottomNavigationBar: const BarraNavegacao(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }

  Future<List<Contato>> buscarContatos(){
    setState((){});
    return dao.consultarTodos();
  }

  Widget criarLista(BuildContext context) {
    return FutureBuilder(
      future: dao.consultarTodos(),
      builder: (context,AsyncSnapshot<List<Contato>> lista){
        if(!lista.hasData) return const CircularProgressIndicator();
        if(lista.data == null) return const Text('Não há contatos...');
        List<Contato> listaContatos = lista.data!;
        return ListView.builder(
          itemCount: listaContatos.length,
          itemBuilder: (context, indice) {
            var contato = listaContatos[indice];
            return criarItemLista(context, contato);
          },
        );
      },
    );
  }

  Widget criarItemLista(BuildContext context, Contato contato){
    return ItemLista(
      contato: contato, 
      alterar: () {
        Navigator.pushNamed(context, Rota.contatoForm, arguments: contato).then((value) => buscarContatos()); 
      },
      detalhes: (){
        Navigator.pushNamed(context, Rota.contatoDetalhe);
      }, 
      excluir: (){
        dao.excluir(contato.id);
        buscarContatos();
      } 
    );
  }
}

class ItemLista extends StatelessWidget {
  final Contato contato;
  final VoidCallback alterar;
  final VoidCallback detalhes;
  final VoidCallback excluir;

  const ItemLista({required this.contato,required this.alterar, required this.detalhes, required this.excluir, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(  
      leading: FotoContato(contato: contato),
      title: Text(contato.nome),
      subtitle: Text(contato.telefone),
      trailing: PainelBotoes(
        alterar: alterar, 
        excluir: excluir
      ),
      onTap: detalhes,
    );
  }
}
