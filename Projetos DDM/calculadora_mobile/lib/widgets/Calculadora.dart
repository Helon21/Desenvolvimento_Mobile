
import 'package:flutter/material.dart';
import 'package:calculadora_mobile/main.dart';

class Calculadora extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    double primeiroNumero = 0;
    double segundoNumero = 0;
    double resultado;
    
    return Scaffold(
      appBar: AppBar(title: Text('Calculadora Basicamente básica')),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("Primeiro número"),
                hintText: 'Digite algum número'
              ),
              onChanged: (numeroDigitado){
                primeiroNumero = double.parse(numeroDigitado);
              },
            ),
            TextField(
              decoration: InputDecoration(
                label: Text("Segundo Número"),
                hintText: 'Digite algum número'
              ),
              onChanged: (segundoNumeroDigitado){
                segundoNumero = double.parse(segundoNumeroDigitado);
              },
            ),
            ElevatedButton(
              child: Text('Somar'),
              onPressed: () {
                resultado = primeiroNumero + segundoNumero;
              showDialog(context: context,
              builder: (context){
                return AlertDialog(
                  title: Text('Resultado $resultado'),
                );
              });
            }),
            ElevatedButton(
              child: Text('Subtrair'),
              onPressed: () {
                resultado = primeiroNumero - segundoNumero;
                showDialog(context: context, 
                builder: (context){
                  return AlertDialog(
                    title: Text('Resultado $resultado'),
                  );
                });
              },
            ),
            ElevatedButton(
              child: Text('Multiplicar'),
              onPressed: () {
                resultado = primeiroNumero * segundoNumero;
                showDialog(context: context, 
                builder: (context){
                  return AlertDialog(
                    title: Text('Resultado $resultado'),
                  );
                });
              },
            ),
            ElevatedButton(
              child: Text('Divisão'),
              onPressed: () {
                resultado = primeiroNumero / segundoNumero;
                showDialog(context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text('Resultado $resultado'),
                  );
                }
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}