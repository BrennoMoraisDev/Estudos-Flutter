import 'package:flutter/material.dart';

class Telacliente extends StatefulWidget {
  const Telacliente({super.key});

  @override
  State<Telacliente> createState() => _TelaclienteState();
}

class _TelaclienteState extends State<Telacliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Tela Cliente',
          style: TextStyle(
            fontSize:25,
            color: Colors.white
          ),
        ),
      ),
    );
  }
}
