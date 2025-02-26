import 'dart:io';

void main() {
  print("+ -> somar");
  print("- -> subtrair");
  print("* -> multiplicar");
  print("/ -> dividir");

  print("Digite o primeiro número:");
  double n1 = double.parse(stdin.readLineSync()!);
  
  print("Digite o segundo número:");
  double n2 = double.parse(stdin.readLineSync()!);
  
  print("Escolha a operação:");
  String op = stdin.readLineSync()!;
  
  double res;

  switch (op) {
    case "+":
      res = n1 + n2;
      break;
    case "-":
      res = n1 - n2;
      break;
    case "*":
      res = n1 * n2;
      break;
    case "/":
      res = n1 / n2;
      break;
    default:
      print("Operação inválida");
      return;
  }

  print("Resultado: $res");
}
