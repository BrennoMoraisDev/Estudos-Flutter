import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  String _textResultado = '';


  void _calcular() {
    double? precoAlcool = double.tryParse(_controllerAlcool.text);
    double? precoGasolina = double.tryParse(_controllerGasolina.text);

    if(precoAlcool == null || precoGasolina == null){
      setState(() {
        _textResultado = 'Valores invalidos digite os valores corretamente use ponto no lugar de virgula';
      });
    }else{
    if((precoAlcool / precoGasolina) >= 0.7){
      setState(() {
        _textResultado = 'Melhor opção: Gasolina ';
      });
      } else{
      setState(() {
        _textResultado = 'Melhor opção: Álcool';
      });
    }

    }


  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Alcool ou Gasolina',
          style: TextStyle(
            color: Colors.white
          ),

        ),
      ),
      
      body: Container(
        padding: EdgeInsets.all(32),
        child:SingleChildScrollView(
          padding:EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
                Image.asset('images/logo.png'),

              Padding(padding: EdgeInsets.only(bottom: 16),
                child: Text('Saiba a melhor opção para abastecer Álcool ou Gasolina',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold

                  ),
                ),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Insira o preço do álccol ex 3.69',
                ),
                style: TextStyle(
                    fontSize: 22
                ),
                controller:_controllerAlcool ,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'insira o preço da gasolina ex 5.79'
                ),
                style: TextStyle(
                    fontSize: 22
                ),
                controller: _controllerGasolina ,
              ),
              Padding(padding: EdgeInsets.only(top: 15),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.cyan)),
                    onPressed: _calcular,
                    child: Text('Calcular',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    )
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20),
                child: Text(
                  _textResultado,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ) ,
                ),
              )
            ],
          ),
        ) ,
      ),
    )

    ;
  }
}
