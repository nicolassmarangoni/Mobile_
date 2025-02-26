import 'dart:io';

void main(){
  print ("Digite o primeiro numero");
  
  var num1= stdin.readLineSync()!;
print("Digite o segundo numero");
var num2 = stdin.readLineSync()!;
int res= int.parse(num1) + int.parse(num2);
  print("Resultado = $res");
}