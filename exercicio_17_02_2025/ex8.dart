import 'dart:io';

void main() {
  print("Posto de Combustíveis - Cálculo do Valor Total");

  print("Quantidade de litros: ");
  double litros = double.parse(stdin.readLineSync()!);

  print("O tipo de combustível (E - Etanol, D - Diesel, G - Gasolina): ");
  String tipoCombustivel = stdin.readLineSync()!.toUpperCase();

  Map<String, double> precos = {
    'E': 1.70,
    'D': 2.00,
    'G': 4.50,
  };

  if (!precos.containsKey(tipoCombustivel)) {
    print("Tipo de combustível inválido!");
    return;
  }

  double precoLitro = precos[tipoCombustivel]!;
  double descontoPercentual = 0.0;

  if (tipoCombustivel == 'E') {
    descontoPercentual = (litros >= 15) ? 0.04 : 0.015;
  } else if (tipoCombustivel == 'D') {
    descontoPercentual = (litros >= 15) ? 0.05 : 0.03;
  } else if (tipoCombustivel == 'G') {
    descontoPercentual = (litros >= 20) ? 0.03 : 0.0;
  }

  double desconto = precoLitro * litros * descontoPercentual;

  double valorTotal = (precoLitro * litros) - desconto;


  print("valor do desconto: R\$ ${desconto.toStringAsFixed(2)}");
  print("valor total a ser pago: R\$ ${valorTotal.toStringAsFixed(2)}");
}