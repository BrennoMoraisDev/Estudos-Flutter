import 'package:flutter/material.dart';

class Telaservico extends StatefulWidget {
  const Telaservico({super.key});

  @override
  State<Telaservico> createState() => _TelaservicoState();
}

class _TelaservicoState extends State<Telaservico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Serviços',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white
          ),
        ),

      ),


      body:SingleChildScrollView(
        padding: EdgeInsets.only(top: 15, left: 5, right: 5),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('imagens/detalhe_servico.png'),
                Text('Nossos Serviços',
                  style: TextStyle(
                    fontSize: 20,
                    
                  ),
                ),
              ],
            ),

            Text('* Consultoria Especializada: Fornecemos orientações estratégicas para ajudar você a tomar decisões informadas e otimizar seus processos.',
            style: TextStyle(
              fontSize: 20
            ),
            ),
            Text('* Desenvolvimento de Projetos: Planejamos e executamos projetos personalizados de acordo com suas demandas específicas',
              style: TextStyle(
                  fontSize: 20
              ),
            ),
            Text( '* Atendimento ao Cliente: Oferecemos suporte contínuo, garantindo que você tenha a melhor experiência possível.',
              style: TextStyle(
                  fontSize: 20
              ),
            ),

          ],
        ),
      ) ,


    );
  }
}
