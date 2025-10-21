🧱 Projeto: Conversão de Objetos para JSON e vice-versa em Dart

Este é um pequeno projeto de exemplo em Dart que demonstra como converter objetos de uma classe (Produto) em JSON, Map e depois reconstruí-los de volta para uma instância de classe.
É uma ótima base para entender o funcionamento de serialização e desserialização de dados — algo essencial em apps Flutter que consomem APIs.

🚀 Funcionalidades

Criação de uma classe Produto com propriedades:

nome

preco

estoque

Conversão de instâncias da classe em Map.

Codificação e decodificação JSON com jsonEncode() e jsonDecode().

Reconstrução da instância original a partir do Map decodificado.

🧩 Estrutura do Projeto
📦 to_map/
 ┣ 📜 lib/
 ┃ ┗ 📜 produto.dart
 ┣ 📜 bin/
 ┃ ┗ 📜 to_map.dart
 ┣ 📜 pubspec.yaml
 ┗ 📜 README.md

💡 Código Explicado
Classe Produto
class Produto {
  String nome;
  double preco;
  int estoque;

  Produto({required this.nome, required this.preco, required this.estoque});

  Map toMap() {
    return {'nome': nome, 'preco': preco, 'estoque': estoque};
  }

  factory Produto.fromMap(Map produto) {
    return Produto(
      nome: produto["nome"],
      preco: produto["preco"],
      estoque: produto["estoque"],
    );
  }
}


A classe define um produto e implementa dois métodos principais:

toMap(): converte o objeto em um Map.

fromMap(): cria uma instância da classe a partir de um Map.

Arquivo main.dart
void main(List<String> arguments) {
  Produto trufa = Produto(nome: 'Trufa', preco: 3.99, estoque: 300);

  // Converte o objeto em JSON
  String jsonString = jsonEncode(trufa.toMap());
  print('Agora é um Json $jsonString');

  // Converte o JSON em Map
  Map trufaMap = jsonDecode(jsonString);
  print("Agora é um Map $trufaMap");

  // Transforma o Map novamente em classe
  Produto classeProdTrufa = Produto.fromMap(trufaMap);
  print("Agora é uma instancia de classe ${classeProdTrufa.nome}");
}

🧠 O que você aprende aqui

A diferença entre objeto, Map e JSON.

Como o dart:convert é usado para trabalhar com JSON.

Como implementar métodos de serialização e desserialização em uma classe.

▶️ Executando o projeto

Certifique-se de ter o Dart SDK instalado.

No terminal, vá até o diretório do projeto e execute:

dart run


O terminal exibirá a conversão passo a passo:

Agora é um Json {"nome":"Trufa","preco":3.99,"estoque":300}
Agora é um Map {nome: Trufa, preco: 3.99, estoque: 300}
Agora é uma instancia de classe Trufa
