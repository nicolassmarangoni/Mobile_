
class Produtos {
  String nome;
  int quantidade;
  double preco;
  String comunicacao;
  double energia;

  Produtos(this.nome, this.quantidade, this.preco, this.comunicacao, this.energia);

  void ligar() {
    print('$nome está ligado.');
  }

  void desligar() {
    print('$nome está desligado.');
  }
}


class Fritadeira extends Produtos {
  Fritadeira(String nome, int quantidade, double preco, String comunicacao, double energia)
      : super(nome, quantidade, preco, comunicacao, energia);

  void ajustarTemperatura(double setpoint) {
    print('Ajustando temperatura da $nome para $setpoint°C.');
  }
}


class Televisao extends Produtos {
  Televisao(String nome, int quantidade, double preco, String comunicacao, double energia)
      : super(nome, quantidade, preco, comunicacao, energia);

  void mudarCanal(int canal) {
    print('Mudando canal da $nome para $canal.');
  }
}

class ArCondicionado extends Produtos {
  ArCondicionado(String nome, int quantidade, double preco, String comunicacao, double energia)
      : super(nome, quantidade, preco, comunicacao, energia);

  void ajustarTemperatura(double setpoint) {
    print('Ajustando temperatura do $nome para $setpoint°C.');
  }
}

void main() {
  Fritadeira fritadeira = Fritadeira("Fritadeira Elétrica", 1, 250.0, "Wi-Fi", 1.5);
  fritadeira.ligar();
  fritadeira.ajustarTemperatura(180);
  fritadeira.desligar();

  Televisao tv = Televisao("Smart TV", 1, 1500.0, "Bluetooth", 0.8);
  tv.ligar();
  tv.mudarCanal(5);
  tv.desligar();

  ArCondicionado ar = ArCondicionado("Ar-Condicionado", 1, 2000.0, "Infrared", 2.5);
  ar.ligar();
  ar.ajustarTemperatura(22);
  ar.desligar();
}