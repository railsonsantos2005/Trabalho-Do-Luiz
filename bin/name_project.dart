import 'dart:io';

double depositar() {
  while (true) {
    stdout.write("Digite o valor do depósito: ");
    String? input = stdin.readLineSync();
    
    if (input != null) {
      double? valor = double.tryParse(input.replaceAll(',', '.'));

      if (valor != null && valor > 0) {
        print("Depósito de R\$${valor.toStringAsFixed(2).replaceAll('.', ',')} realizado com sucesso!");
        return valor; // Retorna o valor depositado para ser usado no saldo
      }
    }
    
    print("Valor inválido. O depósito deve ser um número maior que zero.");
  }
}

// Exemplo de uso
void main() {
  double saldo = 0;
  saldo += depositar();
  print("Saldo atual: R\$${saldo.toStringAsFixed(2).replaceAll('.', ',')}");
}