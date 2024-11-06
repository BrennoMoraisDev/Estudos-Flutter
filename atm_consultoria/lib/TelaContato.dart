import 'package:flutter/material.dart';

class Telacontato extends StatefulWidget {
  const Telacontato({super.key});

  @override
  State<Telacontato> createState() => _TelacontatoState();
}

class _TelacontatoState extends State<Telacontato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Tela de contato',
        style: TextStyle(
        fontSize: 25,
        color: Colors.white
         ) ,
        ),
      ),
    );
  }
}
