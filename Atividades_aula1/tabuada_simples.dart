import 'dart:io';

void main(){
  print('######## Gerador de tabuada ########');
  stdout.write("Digite um número: ");
  int? numero = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < 10; i++){
    int multiplicador = i+1;
    print('$numero X $multiplicador = ${numero * multiplicador}');
  }

}