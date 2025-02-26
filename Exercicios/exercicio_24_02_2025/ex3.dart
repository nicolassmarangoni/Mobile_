void main() {
  // Testando a classe Animal
  Cachorro dog = Cachorro("Rex", 5, "Marrom", "Labrador", 30.0);
  dog.acordou();
  dog.dormiu();

  // Testando a classe Maquina
  Furadeira furadeira = Furadeira("Furadeira Bosch", 1500, 2.5);
  furadeira.ligar();
  furadeira.ajustarVelocidade(2000);
  furadeira.desligar();
}