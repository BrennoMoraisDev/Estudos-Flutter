//tela jogar

import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

void _exibirResultado(){
  var escolhido = Random().nextInt(2);
  var resultado = escolhido == 0? 'cara' : 'coroa';

Navigator.push(
    context,
    MaterialPageRoute(builder: (context)=> Resultado(resultado)
    ));
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xff61bd86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/logo.png'),
            GestureDetector(
              onTap: _exibirResultado,
              child: Image.asset('images/botao_jogar.png'),
            )
          ],
        ),
      ),


    );
  }
}
