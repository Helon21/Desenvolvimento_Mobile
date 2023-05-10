import 'package:aula_09_05_2023/widgets/Formulario2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Formulario extends StatelessWidget{
  var keyForm = GlobalKey<FormState>();
  var editorNome = TextEditingController();
  var editorSobrenome = TextEditingController();
  var editorFrase = TextEditingController();
  var editorIdade = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Form(
        key: keyForm,
        child: Column(
          children: [
            TextFormField(
              controller: editorNome,
              decoration: InputDecoration(
                label: Text('Nome:'),
                hintText: 'Informe o seu nome.'
              ),
              validator: (valorDigitado){
                if(valorDigitado == null || valorDigitado.isEmpty){
                  return 'O campo é obrigatório';
                }
                return null;
              },
            ),
              TextFormField(
              controller: editorSobrenome,
              decoration: InputDecoration(
                  label: Text('Sobrenome:'), hintText: 'Informe o seu Sobrenome.'),
              validator: (valorDigitado) {
                if (valorDigitado == null || valorDigitado.isEmpty) {
                  return 'O campo é obrigatório';
                }
                return null;
              },
            ),
              TextFormField(
              controller: editorFrase,
              decoration: InputDecoration(
                  label: Text('Frase:'),
                  hintText: 'Informe a sua frase.'),
              validator: (valorDigitado) {
                if (valorDigitado == null || valorDigitado.isEmpty) {
                  return 'O campo é obrigatório';
                }
                return null;
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: editorIdade,
              maxLength: 3,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))], //para usar somente o que está definido, de 0 a 9
              decoration: InputDecoration(
                label: Text('Idade:'), 
                hintText: 'Informe sua idade',
              ),
              validator: (valorDigitado){
                if(valorDigitado == null || valorDigitado.isEmpty){
                  return 'O campo é obrigatório';
                }
                return null;
              }
            ),
            ElevatedButton(
              child: Text('ok'),
              onPressed: (){
                if(keyForm.currentState!.validate()){
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Nome: "+editorNome.text+" Sobrenome: "+editorSobrenome.text+" FraseDeEfeito: "+editorFrase.text +" Idade: "+editorIdade.text))
                  );
                }
                Route rota = MaterialPageRoute(builder: (context) => Formulario2());
                Navigator.push(context, rota);
              },
            ),
          ],
        ),
      ),
    );
  } 
}