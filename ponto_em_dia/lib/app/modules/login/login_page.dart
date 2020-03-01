import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:ponto_em_dia/app/shared/widgets/custom_button.dart';
import 'package:ponto_em_dia/app/shared/widgets/custom_textformfield.dart';

import '../login/login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = Modular.get<LoginController>(); // * Instância

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      CustomTxtFrmFld(
                        hintText: 'Username',
                        textEditingController: loginController.nomeController,
                      ),
                      SizedBox(height: 20),
                      CustomTxtFrmFld(
                        hintText: 'Senha',
                        textEditingController: loginController.passwdController,
                        isPasswd: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    titulo: 'Login',
                    funcao: () => loginController.autenticacao(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
