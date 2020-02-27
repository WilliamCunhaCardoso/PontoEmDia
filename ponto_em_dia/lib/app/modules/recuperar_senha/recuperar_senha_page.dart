import 'package:flutter/material.dart';

class RecuperarSenhaPage extends StatefulWidget {
  final String title;
  const RecuperarSenhaPage({Key key, this.title = "RecuperarSenha"})
      : super(key: key);

  @override
  _RecuperarSenhaPageState createState() => _RecuperarSenhaPageState();
}

class _RecuperarSenhaPageState extends State<RecuperarSenhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
