void main(){
  print("Hello, world");

  BombaCombustivel bomba =BombaCombustivel('Álcool');

  bomba._valorLitro = 20;
  bomba.abastecerPorLitro(5);
  bomba.abastecerPorValor(50);
  
}

class BombaCombustivel{
  String tipoCombustivel = '';
  double _valorLitro = 4.70;
  double quantidadeCombustivel = 0.0;

  BombaCombustivel(this.tipoCombustivel, {this.quantidadeCombustivel=0.0});

  void abastecerPorValor(double valor){
    double calculo = valor/this._valorLitro;
    AlterarQuantidadeCombustivel(calculo);

    print("Com o valor de R\$${valor}, o tanque foi abastecido com $calculo litros.");
  }
  
  void abastecerPorLitro(double litros){
    double calculo = this._valorLitro*litros;
    AlterarQuantidadeCombustivel(calculo);

    print("Para abastecer $litros litros, você deve pagar R\$$calculo.");
  }
  
  void alterarCombustivel(String novoCombustivel) => this.tipoCombustivel = novoCombustivel;

  void AlterarQuantidadeCombustivel(double quantidade) => this.quantidadeCombustivel +=quantidade;

  set valorLitro(double litro) {
    this._valorLitro = litro;
  }
}