import 'dart:io';

void main() {
  
  print('Digite a nota do primeiro aluno:');
  double nota1 = double.parse(stdin.readLineSync()!);

  print('Digite a nota do segundo aluno:');
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  // Exibe a média
  print('A média do aluno é: ${media.toStringAsFixed(2)}');


  if (media >= 7) {
    print('Situação: Aprovado');
  } else if (media >= 4) {
    print('Situação: Exame');
  } else {
    print('Situação: Reprovado');
  }
}
