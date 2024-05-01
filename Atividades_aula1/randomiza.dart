import 'dart:math';

void main(){
  List<int> listaGerada = [];
  Random random = Random();
  while(listaGerada.contains(25) == false){
    listaGerada.add(random.nextInt(30) + 10);
  };

  int soma = listaGerada.reduce((valorAtual, elemento) => valorAtual + elemento);
  print('Foram gerados ${listaGerada.length} números, e a sua soma é: $soma');
}