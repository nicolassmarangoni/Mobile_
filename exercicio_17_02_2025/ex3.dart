import 'dart:io';

double calcularSalarioLiquido() {
  print("Digite o seu salário bruto: ");
  double salarioBruto = double.parse(stdin.readLineSync()!);

  double descontoImpostos = salarioBruto * 0.10;
  double bonificacao = salarioBruto * 0.20;
  double salarioLiquido = salarioBruto - descontoImpostos + bonificacao;

  return salarioLiquido;
}

void main() {
  double salarioLiquido = calcularSalarioLiquido();
  print("O seu salário líquido é: R\$ ${salarioLiquido.toStringAsFixed(2)}");
}
