import 'dart:io';

void main(){
  print('######## É primo? ########');
  stdout.write("Numero: ");
  int? numero = int.parse(stdin.readLineSync()!);
  
  String laudo = ePrimo(numero);

  print('O número $numero $laudo primo.');
}

String ePrimo(int numero){
  if(numero <= 1) {
    return 'não pode ser';
  }
  
  for(int i = 2; i <= numero/2; i++){
    if(numero % i == 0) {
      return 'não é';
    }
  }

  return 'é';
}
