import 'dart:io';

void main() {

  const double euroRate = 7.00;
  const double dolarRate = 6.56;
  const double francoSuicoRate = 4.35;

  print('Digite o valor em reais (R\$):');
  double reais = double.parse(stdin.readLineSync()!);

  print('Escolha a moeda de destino:');
  print('1 - Euro (EUR)');
  print('2 - Dólar (USD)');
  print('3 - Franco Suíço (CHF)');
  int escolha = int.parse(stdin.readLineSync()!);

  double resultado;

  switch (escolha) {
    case 1:
      resultado = reais / euroRate;
      print('$reais R\$ é igual a ${resultado.toStringAsFixed(2)} EUR');
      break;
    case 2:
      resultado = reais / dolarRate;
      print('$reais R\$ é igual a ${resultado.toStringAsFixed(2)} USD');
      break;
    case 3:
      resultado = reais / francoSuicoRate;
      print('$reais R\$ é igual a ${resultado.toStringAsFixed(2)} CHF');
      break;
    default:
      print('Opção inválida!');
  }
}
