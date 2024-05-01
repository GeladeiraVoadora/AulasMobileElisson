import 'dart:io';

void main(){
  print('######## Calculadora de desconto ########');
  stdout.write("Valor do desconto (porcentagem): ");
  double? desconto = double.parse(stdin.readLineSync()!);
  stdout.write("Preço original: ");
  double? preco = double.parse(stdin.readLineSync()!);

  double calculo = preco*(100 - desconto)/100;
  String numeroFormatado = calculo.toStringAsFixed(2);
  print('\nNovo preço, com o desconto de $desconto% -> R\$$numeroFormatado');
}