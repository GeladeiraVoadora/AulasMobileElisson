import 'dart:io';

void main(){
  print('######## Calculadora juros simples (ao ano) ########');
  stdout.write("Taxa de juros (porcentagem): ");
  double? taxa = double.parse(stdin.readLineSync()!);
  stdout.write("Valor inicial: ");
  double? valorInicial = double.parse(stdin.readLineSync()!);
  stdout.write("Tempo em anos: ");
  int? anos = int.parse(stdin.readLineSync()!);

  double montante = valorInicial + valorInicial*taxa*anos/100;
  String numeroFormatado = montante.toStringAsFixed(2);
  print('\nMontante, com a taxa de $taxa% ao ano -> R\$ $numeroFormatado');
}