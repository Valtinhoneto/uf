import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
      ),
      body: Contador(),
    ),
  ));
}

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;

  void _incrementarContador(int valor) {
    setState(() {
      _contador += valor;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Contador: $_contador'),
        duration: Duration(milliseconds: 500),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => _incrementarContador(1),
            child: Text('+1'),
          ),
          ElevatedButton(
            onPressed: () => _incrementarContador(5),
            child: Text('+5'),
          ),
          ElevatedButton(
            onPressed: () => _incrementarContador(25),
            child: Text('+25'),
          ),
        ],
      ),
    );
  }
}
