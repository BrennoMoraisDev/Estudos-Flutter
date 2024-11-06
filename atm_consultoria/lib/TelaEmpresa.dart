import 'package:flutter/material.dart';

class Telaempresa extends StatefulWidget {
  const Telaempresa({super.key});

  @override
  State<Telaempresa> createState() => _TelaempresaState();
}

class _TelaempresaState extends State<Telaempresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('Empresa',
        style: TextStyle(fontSize: 25,
        color: Colors.white
          ),
        ),
      ),

      body: SingleChildScrollView(
        child:
        Container(
        padding: EdgeInsets.only(top: 15, left: 7, right: 7),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset('imagens/detalhe_empresa.png'),
                Text('Sobre a Empresa',
                  style: TextStyle(
                      fontSize: 25
                  ),
                ),

              ],
            ),

            Text(
              'Bem-vindo à ATM, onde nossa missão é oferecer soluções inovadoras e de alta qualidade para atender às suas necessidades. Com anos de experiência no setor, nos dedicamos a construir relacionamentos duradouros com nossos clientes, sempre priorizando a excelência no atendimento.'
                  'Nossa equipe é composta por profissionais altamente capacitados e apaixonados pelo que fazem, prontos para entender suas demandas e proporcionar um serviço personalizado. Estamos comprometidos em superar suas expectativas, garantindo que cada interação com nossa empresa seja positiva e produtiva.'
                  'Acreditamos na transparência, ética e responsabilidade, e trabalhamos incessantemente para criar um ambiente que reflita esses valores. Junte-se a nós e descubra como podemos ajudá-lo a alcançar seus objetivos!'
                  'Nossa equipe é composta por profissionais altamente capacitados e apaixonados pelo que fazem, prontos para entender suas demandas e proporcionar um serviço personalizado. Estamos comprometidos em superar suas expectativas, garantindo que cada interação com nossa empresa seja positiva e produtiva.'
                  'Acreditamos na transparência, ética e responsabilidade, e trabalhamos incessantemente para criar um ambiente que reflita esses valores. Junte-se a nós e descubra como podemos ajudá-lo a alcançar seus objetivos!',
              style: TextStyle(
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
      )
    );
  }
}
