import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
        leading: Drawer(child: Container(),),
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
                  flex: 1,
                  icon: FontAwesomeIcons.doorOpen,
                  text: 'Entrada',
                ),
                CustomCard(
                  flex: 1,
                  icon: FontAwesomeIcons.utensils,
                  text: 'Almoço',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomCard(
                  icon: FontAwesomeIcons.hourglassEnd,
                  text: 'Retorno',
                  flex: 1,
                ),
                CustomCard(
                  icon: FontAwesomeIcons.doorClosed,
                  text: 'Saída',
                  flex: 1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
