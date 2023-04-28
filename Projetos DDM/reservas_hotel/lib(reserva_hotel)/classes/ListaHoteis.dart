import 'package:flutter/material.dart';

import 'DetalhesReserva.dart';

class ListaHoteis extends StatelessWidget {
  const ListaHoteis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de hoteis disponíveis'),
      ),
      body: ListView(
        children: [
          legenda(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAQE93yOy67MYw3WcNZP3SoGA667nNJZ_-cQ&usqp=CAU', 
            'Hotel Elite',
             (){
              Route rota = MaterialPageRoute(builder: (context) => DetalhesReserva());
              Navigator.push(context, rota);
             },
          ),
          legenda('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDHZeTV_vac-5zyAXjQji4cg3LZa7stYLbww&usqp=CAU', 
            'Hotel Excelsior',
            (){
              Route rota = MaterialPageRoute(builder: (context) => DetalhesReserva());
              Navigator.push(context, rota);
            },
          ),
          legenda('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQInwVoMTz-ZNNVuC5JyBb7VdzNNQW-ZkqbCg&usqp=CAU', 
            'Estoril Hotel',
            (){
              Route rota = MaterialPageRoute(builder: (context) => DetalhesReserva());
              Navigator.push(context, rota);
            },
          ),
          legenda('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOd_UK_3VxzhUcIOxlHHu1pV9u1QaQxhdr8A&usqp=CAU', 
            'Itália Hotel',
            (){
              Route rota = MaterialPageRoute(builder: (context) => DetalhesReserva());
              Navigator.push(context, rota);
            }
          ),
        ],
      ),
    );
  }

  Widget legenda(String url, String legenda, void Function() onTap){
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Image.network(url),
          Text(legenda),
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
    );
  }

}