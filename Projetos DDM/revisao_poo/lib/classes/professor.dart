
class Professor {

  String? nome;
  String? RA;
  int idade = 0;

  Professor(this.nome, this.idade, this.RA);

  void chamadaAlunos(String nomeAluno1, nomeAluno2){
    print('O nome do primeiro aluno é: ${nomeAluno1}, e o do segundo: ${nomeAluno2}');
  }

  void numeroAlunosTotal(int alunosPrimeiroAno, int alunosSegundoAno) => print('O número total de alunos é: ${alunosPrimeiroAno + alunosSegundoAno}');
  
  var anonymous = () => print('Está função é anônimamente anônima');

}