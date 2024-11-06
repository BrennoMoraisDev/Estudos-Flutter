import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  final String resultado;  // Recebe o resultado ("cara" ou "coroa")

  Resultado(this.resultado);  // Construtor que aceita o resultado como argumento

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    // Verifica o valor de 'resultado' e define a imagem correspondente
    var imagemMoeda = widget.resultado == 'cara'
        ? 'images/moeda_cara.png'
        : 'images/moeda_coroa.png';

    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagemMoeda),  // Exibe a imagem baseada no resultado
            GestureDetector(
              onTap: () {
                Navigator.pop(context);  // Volta para a tela anterior
              },
              child: Image.asset('images/botao_voltar.png'),  // Botão de voltar
            ),
          ],
        ),
      ),
    );
  }
}
