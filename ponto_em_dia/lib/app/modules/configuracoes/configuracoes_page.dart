import 'package:flutter/material.dart';

class ConfiguracoesPage extends StatefulWidget {
  final String title;
  const ConfiguracoesPage({Key key, this.title = "Configuracoes"})
      : super(key: key);

  @override
  _ConfiguracoesPageState createState() => _ConfiguracoesPageState();
}

class _ConfiguracoesPageState extends State<ConfiguracoesPage> {
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
