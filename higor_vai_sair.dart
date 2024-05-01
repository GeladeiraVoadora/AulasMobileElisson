import "dart:math";

void main(){
  Random random = Random();

  List<String> climas = ['Sol', 'Chuva', 'Nublado', 'Neve'];
  List<bool> amigoSaiu = [true, false];
  List<String> financeiro = ['Sem dinheiro', 'Liso batendo', 'Pobre', 'Rico', 'Tem dinheiro'];
  String clima = climas[(random.nextDouble() * 3).round()];
  int temp = (random.nextDouble() * 35.0).toInt();
  String dinheiro = financeiro[(random.nextDouble()*4).round()];
  String nome = 'Higor';

  bool temperatura = temp >= 23;
  bool bolso =  dinheiro == 'Rico'|| dinheiro == 'Tem dinheiro';
  bool amigoSair = amigoSaiu[random.nextDouble().round()];
  bool condicao = (clima == 'Sol' && temperatura || amigoSair && bolso);

  if(condicao){
    print('- $nome: MIAUUUU, vou sair de casa.\n');
    print('Clima: $clima,\nTemperatura atual: $temp,\nMeu amigo vai sair? : $amigoSair,\nCondição financeira: $dinheiro.');

  }else{
    print('- $nome: Vlw, flw. Galerinha do mal, vou ficaR EM CASAAAAAAAA!!!!!!\n');
    print('Clima: $clima,\nTemperatura atual: $temp,\nMeu amigo vai sair? : $amigoSair,\nCondição financeira: $dinheiro.');
  }
}