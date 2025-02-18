import 'dart:io';

void nomeusuario() {
  print("digite o nome:");
  String nome = stdin.readLineSync()!;
  
  print("digite o curso");
  String curso = stdin.readLineSync()!;
  
  print("digite a idade:");
  int idade = int.parse(stdin.readLineSync()!);

  print("\ninformações do usuário:");
  print("nome: $nome");
  print("curso: $curso");
  print("idade: $idade anos");
}
void main() {
   nomeusuario();
}
