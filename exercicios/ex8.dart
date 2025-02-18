import 'dart:io';

void main() {
  print("Posto de Combustíveis - Cálculo do Valor Total");

  // Solicitar informações do usuário
  print("Informe a quantidade de litros: ");
  double litros = double.parse(stdin.readLineSync()!);

  print("Informe o tipo de combustível (E - Etanol, D - Diesel, G - Gasolina): ");
  String tipoCombustivel = stdin.readLineSync()!.toUpperCase();

  // Definir preços por litro
  Map<String, double> precos = {
    'E': 1.70,
    'D': 2.00,
    'G': 4.50,
  };

  // Verificar se o tipo de combustível é válido
  if (!precos.containsKey(tipoCombustivel)) {
    print("Tipo de combustível inválido!");
    return;
  }

  double precoLitro = precos[tipoCombustivel]!;
  double descontoPercentual = 0.0;

  // Definir regras de desconto
  if (tipoCombustivel == 'E') {
    descontoPercentual = (litros >= 15) ? 0.04 : 0.015;
  } else if (tipoCombustivel == 'D') {
    descontoPercentual = (litros >= 15) ? 0.05 : 0.03;
  } else if (tipoCombustivel == 'G') {
    descontoPercentual = (litros >= 20) ? 0.03 : 0.0;
  }

  // Cálculo do valor do desconto
  double desconto = precoLitro * litros * descontoPercentual;

  // Cálculo do valor total a ser pago
  double valorTotal = (precoLitro * litros) - desconto;

  // Exibir o resultado
  print("Valor do desconto: R\$ ${desconto.toStringAsFixed(2)}");
  print("Valor total a ser pago: R\$ ${valorTotal.toStringAsFixed(2)}");
}