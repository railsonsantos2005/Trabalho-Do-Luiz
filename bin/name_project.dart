import 'dart:io';

String solicitarTipoArquivo() {
  // Tipos de arquivos permitidos
  List<String> tiposPermitidos = ['pdf', 'jpg', 'docx'];

  while (true) {
    stdout.write("Digite o tipo de arquivo que deseja enviar (PDF, JPG ou DOCX): ");
    String? tipo = stdin.readLineSync()?.trim().toLowerCase();

    if (tipo != null && tiposPermitidos.contains(tipo)) {
      print("Tipo de arquivo válido: $tipo");
      return tipo;
    } else {
      print("Erro: Tipo de arquivo não permitido. Tente novamente.");
    }
  }
}

void main() {
  String tipoValido = solicitarTipoArquivo();
  print("Você enviou um arquivo do tipo: $tipoValido");
}