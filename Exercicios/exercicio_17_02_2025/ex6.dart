import 'dart:io';

void main() {
  
  print('Digite a idade da primeira pessoa:');
  int idade1 = int.parse(stdin.readLineSync()!);

  print('Digite a idade da segunda pessoa:');
  int idade2 = int.parse(stdin.readLineSync()!);

  // Verifica e imprime quem é a pessoa mais velha
  if (idade1 > idade2) {
    print('A primeira pessoa é a mais velha.');
  } else if (idade2 > idade1) {
    print('A segunda pessoa é a mais velha.');
  } else {
    print('Ambas as pessoas têm a mesma idade.');
  }
}
