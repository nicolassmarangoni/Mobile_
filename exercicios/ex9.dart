import 'dart:io';

void main() {
  print("Preço do fornecimento de energia elétrica");

  print("A quantidade de kWh consumida: ");
  double kWh = double.parse(stdin.readLineSync()!);

  print("Teipo de instalação (R - Residencial, C - Comercial, I - Industrial): ");
  String tipoInstalacao = stdin.readLineSync()!.toUpperCase();

  double precoKWh = 0.0;

  if (tipoInstalacao == 'R') {
    precoKWh = (kWh <= 500) ? 0.50 : 0.70;
  } else if (tipoInstalacao == 'C') {
    precoKWh = (kWh <= 1000) ? 0.65 : 0.60;
  } else if (tipoInstalacao == 'I') {
    precoKWh = (kWh <= 5000) ? 0.55 : 0.50;
  } else {
    print(" instalação inválida!");
    return;
  }

  double valorTotal = kWh * precoKWh;

  print("preço unitário kWh: R\$ ${precoKWh.toStringAsFixed(2)}");
  print("valor total a ser pago: R\$ ${valorTotal.toStringAsFixed(2)}");
}
