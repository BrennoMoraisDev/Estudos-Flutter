import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String numero = '';
  double primeironumero = 0.0;
  double resultado = 0.0;
  String operacao = '';

  void calcular (String tecla){
    setState(() {

      switch(tecla){
      case '0' :
      case '1' :
      case '2' :
      case '3' :
      case '4' :
      case '5' :
      case '6' :
      case '7' :
      case '8' :
      case '9' :
      case ',' :
        numero += tecla;
          break;

      case 'AC' :
        numero = '';
        primeironumero = 0.0;
        operacao = '';

        break;

      case '+' :
        operacao = '+';
        primeironumero = double.parse(numero);
        numero = ''; //limpa o display para o segundo numero
        break;

      case '-' :
        operacao = '-';
        primeironumero = double.parse(numero);
        numero = '';

        break;
      case '/' :
        operacao = '/';
        primeironumero = double.parse(numero);
        numero = '';
        break;
      case 'X' :
        operacao = 'X';
        primeironumero= double.parse(numero);
        numero = '';
        break;
      case '=' :
      if(operacao == '+'){
        resultado = primeironumero + double.parse(numero);
      }
      if(operacao == '-'){
        resultado = primeironumero - double.parse(numero);
      }
      if(operacao == '/'){
        resultado = primeironumero / double.parse(numero);
      }
      if(operacao == 'X'){
        resultado = primeironumero * double.parse(numero);
      }


      numero = resultado.toString();

      break;
    }

      numero =  numero.replaceAll(',', '.');

    // remover o zero desnecessario para resultados inteiros
      if (numero.contains('.')){
        List<String> parts = numero.split('.');
        if(parts [1] == '0'){
          numero = parts[0];
        }
      }

    });
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Calculadora',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  numero,
                  style: TextStyle(
                    fontSize: 70,
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    calcular('AC');
                  },
                  child: Text(
                    'AC',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){},
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){},
                  child: Text(
                    '',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('<X');
                  },
                  child: Text(
                    '<x',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                GestureDetector(
                  onTap: (){
                    calcular('7');
                  },
                  child: Text(
                      '7',
                      style: TextStyle(fontSize: 48),
                    ),
                ),



                GestureDetector(
                  onTap: (){
                    calcular('8');
                  },
                  child: Text(
                    '8',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('9');
                  },
                  child: Text(
                    '9',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('/');
                  },
                  child: Text(
                    '/',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    calcular('4');
                  },
                  child: Text(
                    '4',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('5');
                  },
                  child: Text(
                    '5',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('6');
                  },
                  child: Text(
                    '6',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('X');
                  },
                  child: Text(
                    'X',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    calcular('1');
                  },
                  child: Text(
                    '1',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('2');
                  },
                  child: Text(
                    '2',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('3');
                  },
                  child: Text(
                    '3',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('-');
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    calcular('0');
                  },
                  child: Text(
                    '0',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular(',');
                  },
                  child: Text(
                    ',',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('=');
                  },
                  child: Text(
                    '=',
                    style: TextStyle(fontSize: 48),
                  ),
                ),

                GestureDetector(
                  onTap: (){
                    calcular('+');
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 48),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
