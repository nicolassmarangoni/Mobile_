import 'dart:io';

double calculararea() {

  print("Digite a base do triângulo: ");
  double base = double.parse(stdin.readLineSync()!);

  print("Digite a altura do triângulo: ");
  double altura = double.parse(stdin.readLineSync()!);

  double area = (base * altura) / 2;

  return area;
}

void main() {
  // Chamar a função e exibir o resultado
  double resultado = calculararea();
  print("A área do triângulo é: $resultado");
}