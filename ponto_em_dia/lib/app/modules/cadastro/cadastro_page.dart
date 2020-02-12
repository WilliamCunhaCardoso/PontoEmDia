import 'package:flutter/material.dart';
import 'package:ponto_em_dia/app/modules/widgets/custom_button.dart';
import 'package:ponto_em_dia/app/modules/widgets/custom_textformfield.dart';

class CadastroPage extends StatefulWidget {
  final String title;
  const CadastroPage({Key key, this.title = "Cadastro"}) : super(key: key);

  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomTxtFrmFld(hintText: 'Nome Completo'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomTxtFrmFld(
                      hintText: 'E-mail',
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomTxtFrmFld(
                      hintText: 'Senha',
                      isPasswd: true,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomTxtFrmFld(
                      hintText: 'Confirmar Senha',
                      isPasswd: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CustomButton(
                        titulo: 'Voltar',
                        funcao: null,
                        isSimple: true,
                      ),
                      CustomButton(titulo: 'Cadastrar', funcao: null)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
