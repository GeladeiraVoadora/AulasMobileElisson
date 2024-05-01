import 'dart:io';

double valorHora = 10.00;
double valorHoraExtra = 20.00;
void main(){
  print('######## Calculadora salario ########');
  stdout.write("Horas trabalhadas: ");
  int? horas = int.parse(stdin.readLineSync()!);
  
  List<String> descSalario = calculaSalario(horas);
  print('\nAo trabalhar por ${descSalario[3]} horas, e ${descSalario[4]} extras, o funcionário x receberá: R\$${descSalario[2]}');
  print('Bruto: R\$${descSalario[0]},\nHora extra: R\$${descSalario[1]},\nTotal: R\$${descSalario[2]},\n');
}

List<String> calculaSalario(int horas){
  int horasExtras = 0;
  double salario = 0;
  double salarioExcedente = 0;
  double salarioFinal = 0;
  if(horas > 50){
    horasExtras = horas - 50;
    horas = 50;
    salario = 50*valorHora;
    salarioExcedente = horasExtras*valorHoraExtra;
  } else {
    salario = horas*valorHora;
  }
  salarioFinal = salario + salarioExcedente;

  List<String> lista = [
    salario.toStringAsFixed(2),
    salarioExcedente.toStringAsFixed(2),
    salarioFinal.toStringAsFixed(2),
    horas.toString(),
    horasExtras.toString()
    ];

  return lista;
}