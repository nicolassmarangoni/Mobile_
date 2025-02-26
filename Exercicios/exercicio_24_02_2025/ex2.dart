class Maquina {
  String nome;
  int quantidadeEixos;
  int rotacoesPorMinuto;
  double consumoEnergia;
  bool ligada = false;

  Maquina(this.nome, this.quantidadeEixos, this.rotacoesPorMinuto, this.consumoEnergia);

  void ligar() {
    ligada = true;
    print('$nome ligada!');
  }

  void desligar() {
    ligada = false;
    print('$nome desligada!');
  }

  void ajustarVelocidade(int rpm) {
    rotacoesPorMinuto = rpm;
    print('$nome ajustada para $rpm RPM');
  }
}

class Furadeira extends Maquina {
  Furadeira(String nome, int rotacoesPorMinuto, double consumoEnergia)
      : super(nome, 1, rotacoesPorMinuto, consumoEnergia);
}