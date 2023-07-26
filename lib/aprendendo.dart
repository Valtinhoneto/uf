import 'package:flutter/material.dart';

void main() {
  runApp(criaApp());
}

// Modifique esta função para retornar um widget do tipo Text
// com a mensagem "Aprendendo Flutter!"
Widget criaApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: const Center(
        child: Text("Aprendendo Flutter!"),
      ),
    ),
  );
}
