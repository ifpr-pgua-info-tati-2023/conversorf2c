import 'package:flutter/material.dart';

import 'controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = Controller();

  void _adicionarDigito(String digito) {
    setState(() {
      _controller.adicionarDigito(digito);
    });
  }

  void _calcular() {
    setState(() {
      _controller.converter();
    });
  }

  void _limpar() {
    setState(() {
      _controller.limpar();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor F2C"),
      ),
      body: Center(child: Text("Crie...")),
    );
  }
}
