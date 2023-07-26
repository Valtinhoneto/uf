import 'package:flutter/material.dart';

void main() {
  runApp(const Cumprimento(nome: 'Mundo'));
}

class Cumprimento extends StatelessWidget {
  final String? nome; // Adicionamos o atributo 'nome' ao widget Cumprimento

  const Cumprimento({Key? key, this.nome})
      : super(key: key); // Corrigimos o construtor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Exemplo de Cumprimento"),
        ),
        body: Center(
          child: Text(
            nome != null
                ? "Olá, $nome!"
                : "Olá, Mundo!", // Exibimos o cumprimento com base no nome fornecido ou "Mundo" se nenhum nome for fornecido
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
