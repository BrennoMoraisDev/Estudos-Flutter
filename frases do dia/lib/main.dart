import 'package:flutter/material.dart';
import 'dart:math';
void main(){
  runApp(MaterialApp(
    home: Myapp(),
    debugShowCheckedModeBanner: false,
  ));

}


class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  var _frases = [
    "amo minha esposa Nathalia Helen",
    "Acredite em si mesmo e todo o resto virá naturalmente.",
    "Não espere por oportunidades. Crie-as.",
    "Cada dia é uma nova chance para mudar sua vida.",
    "O maior erro que você pode cometer é ter medo de cometer erros.",
    "Nunca é tarde para ser o que você poderia ter sido.",
    "Desafios são o que tornam a vida interessante; superá-los é o que dá sentido a ela.",

  ];


  var _fraseGerada = 'clique abaixo para gerar uma frase';

  void _gerarFrase(){
    
    var numeroSorteado = Random().nextInt(_frases.length);


   setState(() {
     _fraseGerada = _frases [numeroSorteado];
   });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('frases do dia'),
        backgroundColor: Colors.green,
      ),

      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
              Image.asset("images/logo.png"),
            Text(
                _fraseGerada
              ,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black,),
            ),


            ElevatedButton(onPressed: _gerarFrase ,
                child: Text(
                    'Nova Frase',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              ),

          ],
        ),
      ),

    );
  }
}
