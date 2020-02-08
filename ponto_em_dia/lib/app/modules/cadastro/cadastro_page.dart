import 'package:flutter/material.dart';
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
            child: Column(
              children: <Widget>[
                CustomTxtFrmFld(hintText: 'Nome Completo',),
                CustomTxtFrmFld(hintText: 'E-mail', keyboardType: TextInputType.emailAddress,),
                CustomTxtFrmFld(hintText: 'Senha', isPasswd: true,),
                CustomTxtFrmFld(hintText: 'Confirmar Senha', isPasswd: true,),
                Row(children: <Widget>[
                  // todo: implement cadastrar button
                  // todo: implement voltar button
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
