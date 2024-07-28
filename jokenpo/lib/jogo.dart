import 'package:flutter/material.dart';
import 'dart:math';
class Jogo extends StatefulWidget {
  const Jogo({super.key});

  @override
  State<Jogo> createState() => _JogoState();
}



class _JogoState extends State<Jogo> {
  //area logica dart
  //
  var _imageApp = AssetImage('images/padrao.png');
  var _mensagem = 'Escolha uma opção abaixo: ';
  void _opcaoSelecionada (String escolhaUsuario){
    var opcoes = ['pedra', 'papel', 'tesoura'];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes [numero];


    print('Escolha do App:  $escolhaApp');
    print('Sua escolha : $escolhaUsuario');

      //exibindo imagem escolha do app
      switch(escolhaApp){
        case 'pedra':
          setState(() {
            _imageApp = AssetImage('images/pedra.png');
          });
          break;

        case 'papel':
          setState(() {
            _imageApp = AssetImage('images/papel.png');
          });
          break;

        case 'tesoura':
          setState(() {
            _imageApp = AssetImage('images/tesoura.png');
          });
          break;
      }

      //fazendo validação ganhador

    if(
            (escolhaUsuario == 'pedra' && escolhaApp == 'tesoura') ||
            (escolhaUsuario == 'tesoura' && escolhaApp == 'papel')||
                (escolhaUsuario == 'papel' && escolhaApp == 'pedra')
    ){
      setState(() {
        this._mensagem = 'Parabéns!!  Você Ganhou =)';
      });
    } else if(
        (escolhaApp == 'pedra' && escolhaUsuario == 'tesoura') ||
        (escolhaApp == 'tesoura' && escolhaUsuario == 'papel')||
        (escolhaApp == 'papel' && escolhaUsuario == 'pedra')
    ) {
    setState(() {
    this._mensagem = 'Que pena, Você perdeu =(';
    });
    } else {
      this._mensagem = 'Empatamos ;-)';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
  appBar: AppBar(
    title: Text(
        'Jokenpo',
    ),
    backgroundColor: Colors.blue,
  ),
      
  body:
  Column(
    crossAxisAlignment:CrossAxisAlignment.center ,
    children: [
    //1 Text
    //2 padrao
    // text resultado
    // 3 imagens
      Padding(
          padding: EdgeInsets.only(top: 32, bottom: 16),
        child: Text(
            'Escolha do App',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
        ),
          
      ),
      //ver se o usuario clicou em algum item
      Image(image: this._imageApp,),
      Padding(
          padding: EdgeInsets.only(top: 32, bottom: 16),
        child: Text(
           this._mensagem,
          style: TextStyle(
              fontWeight: FontWeight.bold,
            fontSize: 20
          ),
        ),


      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () => _opcaoSelecionada('pedra') ,
            child: Flexible(child:
            Image.asset(
              'images/pedra.png',
              height: 100,

            ),
            ),
          ),
          GestureDetector(
            onTap: () => _opcaoSelecionada('papel') ,
            child:  Flexible(
                child:
                Image.asset(
                  'images/papel.png',
                  height: 100,
                )
            ),
          ),
          GestureDetector(
            onTap: () => _opcaoSelecionada('tesoura'),
            child:Flexible(child:
            Image.asset(
              'images/tesoura.png',
              height: 100,
            )
            ) ,
          ),


        ],
      ),
    ],
  ),
  );
  }
}

