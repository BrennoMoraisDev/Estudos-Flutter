import 'package:flutter/material.dart';
import 'TelaEmpresa.dart';
import 'TelaCliente.dart';
import 'TelaContato.dart';
import 'TelaServico.dart';



class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
void _abrirEmpresa(){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> Telaempresa()  ));
}

void _abrirServico(){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>  Telaservico() ));
}

void _abrirContato(){
  Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> Telacontato() ));

}

void _abrirCliente(){
Navigator.push(
    context,
    MaterialPageRoute(builder: (context)=> Telacliente() ));
}

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text(
            'ATM Consultoria',
          style: TextStyle(
            fontSize: 27,
            color: Colors.white,
            fontWeight: FontWeight.bold,

          ),
        ),
        ),

        body:  Container(
        padding: EdgeInsets.all(16),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Image.asset('imagens/logo.png'),
                 Padding(
                     padding: EdgeInsets.only(top: 32),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       GestureDetector(
                         onDoubleTap: _abrirEmpresa,
                         child: Image.asset('imagens/menu_empresa.png'),
                       ),
                       GestureDetector(
                         onDoubleTap: _abrirServico,
                         child: Image.asset('imagens/menu_servico.png'),
                         
                         ),
                     ],
                   ),      
                         
                 ),
                 Padding(
                   padding: EdgeInsets.only(top: 32),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       GestureDetector(
                         onDoubleTap: _abrirCliente,
                         child: Image.asset('imagens/menu_cliente.png'),
                       ),
                       GestureDetector(
                         onDoubleTap: _abrirContato,
                         child: Image.asset('imagens/menu_contato.png'),

                       ),
                     ],
                   ),

                 )
               ],          
           ),
        ),
      );
  }
}
