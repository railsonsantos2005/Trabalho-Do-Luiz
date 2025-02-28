import 'dart:io';

void solicitarMetodoPagamento() {
  List<String> metodosValidos = ['cartao', 'boleto', 'paypal', 'pix'];

  while (true) {
    stdout.write("Escolha o método de pagamento (${metodosValidos.join(", ")}): ");
    String? metodo = stdin.readLineSync()?.trim().toLowerCase();

    if (metodo != null && metodosValidos.contains(metodo)) {
      print("Método de pagamento \"$metodo\" selecionado com sucesso.");
      return;
    }
    
    print("Método inválido. Por favor, tente novamente.");
  }
}

void main() {
  solicitarMetodoPagamento();
}