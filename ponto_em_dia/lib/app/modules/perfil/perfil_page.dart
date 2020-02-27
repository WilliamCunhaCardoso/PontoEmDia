import 'package:flutter/material.dart';
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
      body: Card(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Nome'),
              subtitle: Text('William Cunha Cardoso'),
            ),
            ListTile(
              title: Text('E-mail'),
              subtitle: Text('william@email.com'),
            ),
            ListTile(
              title: Text('Cargo'),
              subtitle: Text('Desenvolvedor Mobile Jr'),
            ),
            ListTile(
              title: Text('Departamento'),
              subtitle: Text('Desenvolvimento'),
            ),
            ListTile(
              title: Text('Matrícula'),
              subtitle: Text('DEV001'),
            ),
            ListTile(
              title: Text('Gestor'),
              subtitle: Text('Mailliw Osodrac'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
