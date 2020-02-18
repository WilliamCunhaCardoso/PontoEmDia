import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ponto_em_dia/app/app_controller.dart';
import 'package:ponto_em_dia/app/shared/widgets/custom_bottombar.dart';

class PerfilPage extends StatefulWidget {
  final String title;
  const PerfilPage({Key key, this.title = "Perfil"}) : super(key: key);

  @override
  _PerfilPageState createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
