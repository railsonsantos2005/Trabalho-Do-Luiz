Import 'dart:io';

void cadastrarCategoria() {
  List<String> categorias = ["eletronicos", "alimentos", "vestuario", "livros"];

  stdout.write("Digite a categoria do produto (eletronicos, alimentos, vestuario, livros): ");
  String? categoria = stdin.readLineSync()?.trim().toLowerCase();

  if (categoria != null && categorias.contains(categoria)) {
    print("Categoria válida: $categoria");
  } else {
    print("Categoria inválida. As opções válidas são: ${categorias.join(", ")}");
  }
}

void main() {
  cadastrarCategoria();
}