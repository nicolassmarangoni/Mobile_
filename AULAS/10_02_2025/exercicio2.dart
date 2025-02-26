import 'dart:io';

void main() {
  double n1, n2, res;
  
  print("Digite o primeiro número:");
  n1 = double.parse(stdin.readLineSync()!); // Lê e converte para double
  
  print("Digite o segundo número:");
  n2 = double.parse(stdin.readLineSync()!); // Lê e converte para double
  
  res = (n1 + n2) / 2; // Calcula a média
  
  print("Média: $res");
  
  // Verifica se o aluno foi aprovado ou reprovado
  if (res >= 5) {
    print("Aprovado - média: $res");
  } else {
    print("Reprovado - média: $res");
  }
}
