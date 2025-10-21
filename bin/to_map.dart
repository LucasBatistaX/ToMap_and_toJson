import 'dart:convert';
import 'dart:io';

import 'package:to_map/produtos.dart';

void main(List<String> arguments) {

  Produto trufa = Produto(nome: 'Trufa', preco: 3.99, estoque: 300);
  Produto tablete = Produto(nome: 'tablete', preco: 19.99, estoque: 150);
  Produto montebello = Produto(nome: 'montebello', preco: 13.99, estoque: 250);
  Produto bytes = Produto(nome: 'bytes', preco: 8.99, estoque: 400);
  Produto caneca = Produto(nome: 'caneca', preco: 33.99, estoque: 100);

  


  //converte o objeto em Json;
  String jsonString = jsonEncode(trufa.toMap());
  print('Agora é um Json $jsonString');

  //converte o Json em Map;
  Map trufaMap = jsonDecode(jsonString);
  print("Agora é um Map $trufaMap");

  //transforma o Map em classe.
  Produto classeProdTrufa= Produto.fromMap(trufaMap);

  print("Agora é uma instancia de classe ${classeProdTrufa.nome}");
  
  

}
