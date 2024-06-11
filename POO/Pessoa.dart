void main(){
  Pessoa pessoa1 = Pessoa("Elisson", idade: 27, telefone: '81981928273');
  pessoa1.cumprimentar();
}

class Pessoa {
  //Atributos
  String nome = '';
  int idade = 0;
  String telefone = '';

  //Contrutor
  Pessoa(this.nome, {this.idade=0, this.telefone=''});

  // Métodos
  void cumprimentar(){
    print('Olá, meu nome é ${this.nome}.');
  }
}