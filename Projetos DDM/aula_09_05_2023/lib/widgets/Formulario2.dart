import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Formulario2 extends StatelessWidget {
  var keyForm = GlobalKey<FormState>();
  var editorCodigo = TextEditingController();
  var editorCodigoProduto = TextEditingController();
  var mascaraCPF = MaskTextInputFormatter(mask: '###.###.###-##');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Continuação Cadastro')),
      body: Form(
        key: keyForm,
        child: Column(
          children: [
            TextFormField(
              controller: editorCodigo,
              maxLength: 20,
              inputFormatters: [FilteringTextInputFormatter.deny(RegExp(r'[x,X,y,Y]'))],
              decoration: InputDecoration(
                label: Text('Codigo'),
                hintText: 'Insira o código'
              ),
              validator: (valorDigitado){
                if(valorDigitado == null || valorDigitado.isEmpty){
                  return 'O campo é obrigatório';
                }
                return null;
              }
            ),
            TextFormField(
              controller: editorCodigoProduto,
              maxLength: 20,
              inputFormatters: [FilteringTextInputFormatter.allow(RegExp(r'[a-z,A-Z,0-9]'))],
              decoration: InputDecoration(
                label: Text('Codigo do Produto'),
                hintText: 'Insira o código'
              ),
              validator: (valorDigitado){
                if(valorDigitado == null || valorDigitado.isEmpty){
                  return 'O campo é obrigatório';
                }
                return null;
              }
            ),
            TextFormField(
              inputFormatters: [mascaraCPF],
              decoration: InputDecoration(
                label: Text('CPF:'),
                hintText: 'Informe sua frase',
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
                      SnackBar(content: Text("Codigo: "+editorCodigo.text+" Código do produto: "+editorCodigoProduto.text+" CPF: "+mascaraCPF.getMaskedText()))
                  );
                }
              },
            ),
          ]
        ),
      ),
    );
  }
}