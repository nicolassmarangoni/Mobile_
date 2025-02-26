import 'dart:io';
void main (){
  print ("Digite seu nome");

  String nome =stdin.readLineSync()!;
  print("Digite sua idade");
  String idade = stdin.readLineSync()!;

  print("Nome:$nome idade:$idade");

}