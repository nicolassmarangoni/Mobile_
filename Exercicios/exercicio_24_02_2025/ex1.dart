class Animal {
  String nome;
  int idade;
  String cor;
  String raca;

  Animal(this.nome, this.idade, this.cor, this.raca);
}

class Passaro extends Animal {
  double peso;

  Passaro(String nome, int idade, String cor, String raca, this.peso) : super(nome, idade, cor, raca);

  void acordou() => print('$nome acordou!');
  void dormiu() => print('$nome dormiu!');
}

class Cachorro extends Animal {
  double peso;

  Cachorro(String nome, int idade, String cor, String raca, this.peso) : super(nome, idade, cor, raca);

  void acordou() => print('$nome acordou!');
  void dormiu() => print('$nome dormiu!');
}

class Rato extends Animal {
  double peso;

  Rato(String nome, int idade, String cor, String raca, this.peso) : super(nome, idade, cor, raca);

  void acordou() => print('$nome acordou!');
  void dormiu() => print('$nome dormiu!');
}

class Gato extends Animal {
  double peso;

  Gato(String nome, int idade, String cor, String raca, this.peso) : super(nome, idade, cor, raca);

  void acordou() => print('$nome acordou!');
  void dormiu() => print('$nome dormiu!');
}