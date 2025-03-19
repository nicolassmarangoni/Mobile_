abstract class maquinaIndustrial {
  String nome;
  double potencia;
  bool status = false;

  maquinaIndustrial(this.nome, this.potencia);

  void ligar();
  void desligar();
}
class prensa extends maquinaIndustrial {
  double pressao;

  prensa(String nome, double potencia, this.pressao) : super(nome, potencia);

  @override
  void ligar() {
    status = true;
    print("prensa $nome ligada com $pressao toneladas.");
  }

  @override
  void desligar() {
    status = false;
    print("prensa $nome desligada.");
  }
}

class roboSolda extends maquinaIndustrial {
  String tipoSolda;

  roboSolda(String nome, double potencia, this.tipoSolda) : super(nome, potencia);

  @override
  void ligar() {
    status = true;
    print("robô de solda $nome ligado. tipo de solda: $tipoSolda.");
  }

  @override
  void desligar() {
    status = false;
    print("robô de solda $nome desligado.");
  }
}
class pessoa {
  String nome;
  int idade;

  pessoa(this.nome, this.idade);

  void mostrarInfo() {
    print("nome: $nome, idade: $idade anos.");
  }
}
abstract class automoveis {
  String nome;
  String cor;
  int ano;

  automoveis(this.nome, this.cor, this.ano);

  void colocarCinto();
  void ligarCarro();
  void desligarCarro();
  void dirigir();
}
class carro extends automoveis {
  carro(String nome, String cor, int ano) : super(nome, cor, ano);

  @override
  void colocarCinto() {
    print("cinto colocado no carro $nome.");
  }

  @override
  void ligarCarro() {
    print("carro $nome ligado.");
  }

  @override
  void desligarCarro() {
    print("carro $nome desligado.");
  }

  @override
  void dirigir() {
    print("carro $nome em movimento.");
  }
}
void main() {
  var p = prensa("prensa hidráulica", 3000, 10);
  p.ligar();
  p.desligar();

  var r = roboSolda("robô tig", 2000, "TIG");
  r.ligar();
  r.desligar();

  var pessoa1 = pessoa("joaozinho", 21);
  pessoa1.mostrarInfo();

  var c = carro("ford", "azul", 2017);
  c.colocarCinto();
  c.ligarCarro();
  c.dirigir();
  c.desligarCarro();
}
