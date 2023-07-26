import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navegação',
    home: Inicio(),
  ));
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Início"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detalhe("Azul")),
              );
            },
            child: Text("Azul"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detalhe("Vermelho")),
              );
            },
            child: Text("Vermelho"),
          ),
        ],
      ),
    );
  }
}

class Detalhe extends StatelessWidget {
  final String cor;

  Detalhe(this.cor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalhe"),
      ),
      body: Center(
        child: Text("$cor"),
      ),
    );
  }
}
