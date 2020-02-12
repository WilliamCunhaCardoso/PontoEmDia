import 'package:flutter/material.dart';
import 'package:ponto_em_dia/app/modules/widgets/custom_card.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomCard(
                  icon: Icons.nature,
                  text: 'Entrada',
                ),
                CustomCard(
                  icon: Icons.nature,
                  text: 'Almoço',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomCard(
                  icon: Icons.nature,
                  text: 'Retorno',
                ),
                CustomCard(
                  icon: Icons.nature,
                  text: 'Saída',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
