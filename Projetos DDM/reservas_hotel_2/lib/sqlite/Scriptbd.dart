const criarTabela = [
  '''
    CREATE TABLE pessoa(
      id INTEGER NOT NULL PRIMARY KEY,
      nome VARCHAR(200) NOT NULL,
      telefone VARCHAR(200) NOT NULL,
      cpf CHAR(11),
      reserva_id INTEGER NOT NULL,
      FOREIGN KEY (reserva_id) REFERENCES reserva (id) 
    )
  ''',
  '''
    CREATE TABLE reserva(
      id INTEGER NOT NULL PRIMARY KEY,
      nomeHotel VARCHAR(200) NOT NULL,
      endereco VARCHAR(200) NOT NULL,
      horaEntrada INTEGER NOT NULL,
      horaSaida INTEGER NOT NULL,
      numeroQuarto INTEGER NOT NULL,
    )
  '''
];