import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class LoginUsuario extends StatefulWidget {
  const LoginUsuario({super.key});

  @override
  State<LoginUsuario> createState() => _LoginUsuarioState();
}

class _LoginUsuarioState extends State<LoginUsuario> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _pageController = PageController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();

  Future<void> _autenticarUsuario() async {
    Map<String, dynamic> userData = {
      'email': _emailController.text,
      'senha': _senhaController.text,
    };
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        body: PageView(
          controller: _pageController,
          children: [
            _buildUserLogin(),
          ],
        ),
      ),
    );
  }

  Widget _buildUserLogin(){
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: LayoutBuilder(
          builder: (BuildContext context, constraints) {
            if(constraints.maxWidth > 600){
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/logo.png',
                          width: 200,
                        ),
                        const SizedBox(height: 20),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: (value) {
                                  if (EmailValidator.validate(value!)) {
                                    return null;
                                  }else{
                                    return 'Email inválido';
                                  } 
                                },
                                decoration: InputDecoration(
                                  labelText: 'Email',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                controller: _senhaController,
                                obscureText: true,
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                validator: validarSenha,
                                decoration: InputDecoration(
                                  labelText: 'Senha',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 100,
                  ),
                  const SizedBox(height: 20),
                  Form(
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if (EmailValidator.validate(value!)) {
                              return null;
                            }else{
                              return 'Email inválido';
                            } 
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          obscureText: true,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: validarSenha,
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      //rota para o esqueci minha senha.
                    
                    },
                    child: Text(
                      'Esqueci minha senha',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await _autenticarUsuario();
                        //Route route = MaterialPageRoute(builder: (context) => Home());
                        //Navigator.pushReplacementNamed(context, routeName);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      //rota para o cadastro de usuário.
                    
                    },
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  String? validarSenha(String? value) {
    final senhaRegex =
        r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*&])[A-Za-z\d@$!%*?&]+$';
    if (value == null || value.isEmpty) {
      return 'Por favor, insira uma senha';
    } else if (value.length < 8) {
      return 'A senha deve ter no mínimo 8 caracteres';
    } else {
      return null; // retorna null se senha for válida
    }
  }
}