import 'dart:io';

class OverClock{
  acessarBios(){
    // ...
  }
  acessarAbaMemoriaRAM(){
    // ...
  }
  aumentarFrequencia(){
    // ...
  }
  testar(){
    // ...
  }
}

class Marca{
  final String nome;
  final String descricao;
  Marca({required this.nome,required this.descricao});
}

class Memoria {
  final String nome;
  final Marca marca;
  final int velocidade; 
  final int capacidade;
  final double frequencia;
  final Function overClock;
  Memoria(
    {required this.nome, required this.marca, 
    required this.velocidade, required this.capacidade, required this.frequencia,
    required this.overClock});
}
class Processador{
  final String nome;
  final Marca marca;
  final int quantidadeNucleos;
  Processador({
    required this.nome, required this.marca, required this.quantidadeNucleos
  });
}

class Teclado{
  final String nome;
  final Marca marca;
  Teclado({
    required this.nome, required this.marca
  });
}

class Mouse{
  final String nome;
  final Marca marca;
  Mouse({
    required this.nome, required this.marca
  });
}

class Impressora{
  final String nome;
  final Marca marca;
  final Function imprimir;
  Impressora({
    required this.nome, required this.marca, required this.imprimir
  });
}

class Monitor{
  final String nome;
  final Marca marca;
  final int polegadas;
  final String resolucao;
  Monitor({
    required this.nome, required this.marca, required this.polegadas, required this.resolucao
  });
}

class PlacaVideo{
  final String nome;
  final Marca marca;
  final String modelo;
  final int quantidadeVRAM;
  PlacaVideo({
    required this.nome, required this.marca, required this.modelo, required this.quantidadeVRAM
  });
}

class PlacaMae{
  final String nome;
  final Marca marca;
  final String modelo;
  final int slotsRAM;
  PlacaMae({
    required this.nome, required this.marca, required this.modelo, required this.slotsRAM
  });
}

class DiscoRigido{
  final String nome;
  final Marca marca;
  final String modelo;
  final double capacidadeArmazenamento;
  final int velocidadeEscrita;
  final int velocidadeLeitura;
  final Function formatar;
  final Function otimizarEspaco;
  DiscoRigido({
    required this.nome, required this.marca, required this.modelo, required this.capacidadeArmazenamento,
    required this.velocidadeEscrita, required this.velocidadeLeitura, required this.formatar, 
    required this.otimizarEspaco
  });
}

class FonteAlimentacao{
  final String nome;
  final Marca marca;
  final String modelo;
  final double potencia;
  final String eficienciaEnergetica;
  final Function monitorarConsumo;
  final Function protegerComponentes;
  FonteAlimentacao({
    required this.nome, required this.marca, required this.modelo, required this.potencia, 
    required this.eficienciaEnergetica, required this.monitorarConsumo, required this.protegerComponentes
  });
}

class Computador{
  final Memoria memoria;
  final Processador processador;
  final Teclado teclado;
  final Mouse mouse;
  final Impressora impressora;
  final Monitor monitor; 
  final PlacaVideo placaVideo;
  final PlacaMae placaMae;
  final DiscoRigido discoRigido;
  final FonteAlimentacao fonteAlimentacao;
  Computador({
    required this.memoria, required this.processador, required this.teclado, required this.mouse, required this.impressora,
    required this.monitor, required this.placaVideo, required this.placaMae, required this.discoRigido, required this.fonteAlimentacao
  });
}




void main(List<String> arguments){
  /*
  Crie e altere as classes complementares com atributos que julgar necessário
  - diferente dos colegas
  - defina métodos criativos e funcionais

  Objetivo final é criar um objeto do tipo computador!!!
  */
  print('${
    Memoria( 
      nome: 'Memória Kingston Fury Beast',
      marca: Marca(
        nome: 'Kingston',
        descricao: 'Kingston Corporation'
      ),
      overClock: (){
        var overClock = OverClock();
        overClock.acessarBios();
        overClock.acessarAbaMemoriaRAM(); 
        overClock.aumentarFrequencia();
        overClock.testar();
      },
      capacidade: 8,
      velocidade: 3200,
      frequencia: 240
    )
  } ${
    Processador(
      nome: 'Ryzen 9 5900x',
      marca: Marca(
        nome: 'AMD',
        descricao: 'AMD Corporate' 
      ),
      quantidadeNucleos: 12
    )
  } ${
    Teclado(
      nome: 'HyperX',
      marca: Marca(
        nome: 'Kingston',
        descricao: 'KingstonTecnology'
      )
    )
  }${
    Mouse(
      nome: 'Logitech G203 LIGHTSYNC RGB',
      marca: Marca(
        nome: 'Logitech',
        descricao: 'Logitech Internacional S.A'
      )
    )
  }${
    Impressora(
      nome: 'Epson EcoTank L121',
      marca: Marca(
        nome: 'Epson',
        descricao: 'Descrição da epson'
      ),
      imprimir: (){
        imprimir(){
          print("Colocou o papel? Digite SIM ou NÂO");
          var papel = stdin.readLineSync()!;
          if(papel.toUpperCase() == "SIM"){
            print("Iniciando impressão");
          }
          else{
            print("Insira o papel e tente novamente");
          }
        }
      }
    )
  }${
    Monitor(
      nome: 'Ultra Wide Gamer',
      marca: Marca(
        nome: 'LG',
        descricao: 'Life is good'
      ),
      polegadas: 29,
      resolucao: '1920 x 1080 pixeis'
    )
  }${
    PlacaVideo(
      nome: 'Nvidia GeForce rtx 4090',
      marca: Marca(
        nome: 'Nvidia',
        descricao: 'Nvidia Corporation'
      ),
      modelo: 'GeForce RTX 4090',
      quantidadeVRAM: 24
    )
  }${
    PlacaMae(
      nome: 'Placa-Mae Asus Prime Z690-P Wifi - ASUS',
      marca: Marca(
        nome: 'Asus',
        descricao: 'Fabricante das mais vendidas e mais premiadas placas-mães do mundo'
      ),
      modelo: 'Asus Prime Z690-P Wifi - ASUS',
      slotsRAM: 3
    )
  }${
    DiscoRigido(
      nome: 'Disco rígido WD Blue de 500 GB',
      marca: Marca(
        nome: 'Western Digital',
        descricao: 'Fabricante de discos rigidos e ssd'
      ),
      modelo: 'WD Blue',
      capacidadeArmazenamento: 550,
      velocidadeEscrita: 6,
      velocidadeLeitura: 7200,
      formatar: (){
        formatar(){
          print("Deseja formatar o disco? Sim ou Não?");
          var confirmacaoFormatacao = stdin.readLineSync()!;
          if(confirmacaoFormatacao.toLowerCase() == 'sim'){
            print("Iniciando formatação do disco");
          }
          else{
            print("Operação de formatação cancelada");
          }
        }
      },
      otimizarEspaco: (){
        otimizarEspaco(){
          print("Deseja otimizar o espaço em disco? Sim ou Não?");
          var confimarcaoOtimizacao = stdin.readLineSync()!;
          if(confimarcaoOtimizacao.toLowerCase() == 'sim'){
            print("Iniciando Otimização de Disco");
          }
          else{
            print("Operação de otimização cancelada");
          }
        }
      },
    )
  }${
    FonteAlimentacao(
      nome: 'Akasa Venom Power',
      marca: Marca(
        nome: 'não sei',
        descricao: 'não sei'
      ),
      modelo: 'Akasa Venom Power',
      potencia: 900,
      eficienciaEnergetica: '85%',
      monitorarConsumo: (){
        monitorarConsumo(){
          print("Relatório de consumo");
        }
      },
      protegerComponentes: (){
        protegerComponentes(){
          print("OMG TA CHOVENDO, PRECISO PROTEGER MEUS COMPONENTES CASO UM RAIO ATINJA ESTA CASA!!!");
        }
      }
    )
  }');

  var computador = Computador(
    memoria: Memoria(
      nome: 'Memória Kingston Fury Beast',
      marca: Marca(
        nome: 'Kingston',
        descricao: 'Kingston Corporation'
      ),
      overClock: (){
        var overClock = OverClock();
        overClock.acessarBios();
        overClock.acessarAbaMemoriaRAM(); 
        overClock.aumentarFrequencia();
        overClock.testar();
      },
      capacidade: 8,
      velocidade: 3200,
      frequencia: 240
    ),
    processador: Processador(
      nome: 'Ryzen 9 5900x',
      marca: Marca(
        nome: 'AMD',
        descricao: 'AMD Corporate' 
      ),
      quantidadeNucleos: 12
    ),
    teclado: Teclado(
      nome: 'HyperX',
      marca: Marca(
        nome: 'Kingston',
        descricao: 'KingstonTecnology'
      )
    ),
    mouse: Mouse(
      nome: 'Logitech G203 LIGHTSYNC RGB',
      marca: Marca(
        nome: 'Logitech',
        descricao: 'Logitech Internacional S.A'
      )
    ),
    impressora: Impressora(
      nome: 'Epson EcoTank L121',
      marca: Marca(
        nome: 'Epson',
        descricao: 'Descrição da epson'
      ),
      imprimir: (){
        imprimir(){
          print("Colocou o papel? Digite SIM ou NÂO");
          var papel = stdin.readLineSync()!;
          if(papel.toUpperCase() == "SIM"){
            print("Iniciando impressão");
          }
          else{
            print("Insira o papel e tente novamente");
          }
        }
      }
    ),
    monitor: Monitor(
      nome: 'Ultra Wide Gamer',
      marca: Marca(
        nome: 'LG',
        descricao: 'Life is good'
      ),
      polegadas: 29,
      resolucao: '1920 x 1080 pixeis'
    ),
    placaVideo: PlacaVideo(
      nome: 'Nvidia GeForce rtx 4090',
      marca: Marca(
        nome: 'Nvidia',
        descricao: 'Nvidia Corporation'
      ),
      modelo: 'GeForce RTX 4090',
      quantidadeVRAM: 24
    ),
    placaMae: PlacaMae(
      nome: 'Placa-Mae Asus Prime Z690-P Wifi - ASUS',
      marca: Marca(
        nome: 'Asus',
        descricao: 'Fabricante das mais vendidas e mais premiadas placas-mães do mundo'
      ),
      modelo: 'Asus Prime Z690-P Wifi - ASUS',
      slotsRAM: 3
    ),
    discoRigido: DiscoRigido(
      nome: 'Disco rígido WD Blue de 500 GB',
      marca: Marca(
        nome: 'Western Digital',
        descricao: 'Fabricante de discos rigidos e ssd'
      ),
      modelo: 'WD Blue',
      capacidadeArmazenamento: 550,
      velocidadeEscrita: 6,
      velocidadeLeitura: 7200,
      formatar: (){
        formatar(){
          print("Deseja formatar o disco? Sim ou Não?");
          var confirmacaoFormatacao = stdin.readLineSync()!;
          if(confirmacaoFormatacao.toLowerCase() == 'sim'){
            print("Iniciando formatação do disco");
          }
          else{
            print("Operação de formatação cancelada");
          }
        }
      },
      otimizarEspaco: (){
        otimizarEspaco(){
          print("Deseja otimizar o espaço em disco? Sim ou Não?");
          var confimarcaoOtimizacao = stdin.readLineSync()!;
          if(confimarcaoOtimizacao.toLowerCase() == 'sim'){
            print("Iniciando Otimização de Disco");
          }
          else{
            print("Operação de otimização cancelada");
          }
        }
      },
    ),
    fonteAlimentacao: FonteAlimentacao(
      nome: 'Akasa Venom Power',
      marca: Marca(
        nome: 'não sei',
        descricao: 'não sei'
      ),
      modelo: 'Akasa Venom Power',
      potencia: 900,
      eficienciaEnergetica: '85%',
      monitorarConsumo: (){
        monitorarConsumo(){
          print("Relatório de consumo");
        }
      },
      protegerComponentes: (){
        protegerComponentes(){
          print("OMG ESTA CHOVENDO, PRECISO PROTEGER MEUS COMPONENTES CASO UM RAIO ATINJA ESTA CASA!!!");
        }
      }
    ),
  );

}