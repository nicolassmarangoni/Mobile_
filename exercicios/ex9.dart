import 'dart:io';

void main() {
  print("Cálculo do preço do fornecimento de energia elétrica");

  // Solicitar informações do usuário
  print("Informe a quantidade de kWh consumida: ");
  double kWh = double.parse(stdin.readLineSync()!);

  print("Informe o tipo de instalação (R - Residencial, C - Comercial, I - Industrial): ");
  String tipoInstalacao = stdin.readLineSync()!.toUpperCase();

  double precoKWh = 0.0;

  // Verificar o tipo de instalação e calcular o preço do kWh
  if (tipoInstalacao == 'R') {
    precoKWh = (kWh <= 500) ? 0.50 : 0.70;
  } else if (tipoInstalacao == 'C') {
    precoKWh = (kWh <= 1000) ? 0.65 : 0.60;
  } else if (tipoInstalacao == 'I') {
    precoKWh = (kWh <= 5000) ? 0.55 : 0.50;
  } else {
    print("Tipo de instalação inválido!");
    return;
  }

  // Calcular o valor total a ser pago
  double valorTotal = kWh * precoKWh;

  // Exibir o resultado
  print("Preço unitário do kWh: R\$ ${precoKWh.toStringAsFixed(2)}");
  print("Valor total a ser pago: R\$ ${valorTotal.toStringAsFixed(2)}");
}
