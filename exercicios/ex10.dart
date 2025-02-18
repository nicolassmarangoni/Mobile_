import 'dart:io';

void main() {
  print("Calculadora com 4 valores numéricos");

  List<double> valores = [];
  for (int i = 1; i <= 4; i++) {
    print("Informe o valor $i: ");
    valores.add(double.parse(stdin.readLineSync()!));
  }
  print("Escolha a operação: soma (+), subtração (-), multiplicação (*), divisão (/)");
  String operacao = stdin.readLineSync()!;

  double resultado = valores[0];

  for (int i = 1; i < valores.length; i++) {
    if (operacao == '+') {
      resultado += valores[i];
    } else if (operacao == '-') {
      resultado -= valores[i];
    } else if (operacao == '*') {
      resultado *= valores[i];
    } else if (operacao == '/') {
      if (valores[i] != 0) {
        resultado /= valores[i];
      } else {
        print("Erro: Divisão por zero!");
        return;
      }
    } else {
      print("Operação inválida!");
      return;
    }
  }
  print("Resultado da operação: $resultado");
}