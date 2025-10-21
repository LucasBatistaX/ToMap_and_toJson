import 'dart:convert';

class Produto {
  String nome;
  double preco;
  int estoque;

  Produto({required this.nome, required this.preco, required this.estoque});

  Map toMap() {
    Map produtoMap = {
      'nome': nome, 
      'preco': preco, 
      'estoque': estoque
    };
    return produtoMap;
  }

  factory Produto.fromMap(Map produto) {
    return Produto(
      nome: produto["nome"],
      preco: produto["preco"],
      estoque: produto["estoque"],
    );
  }
  
}
