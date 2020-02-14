import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ponto_em_dia/app/modules/widgets/custom_bottombar.dart';
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
                  flex: 1,
                  icon: FontAwesomeIcons.doorOpen,
                  text: 'Entrada', categoria: 'Entrada',
                ),
                CustomCard(
                  flex: 1,
                  icon: FontAwesomeIcons.utensils,
                  text: 'Almoço', categoria: 'Almoço',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomCard(
                  icon: FontAwesomeIcons.hourglassEnd,
                  text: 'Retorno',
                  flex: 1, categoria: 'Retorno',
                ),
                CustomCard(
                  icon: FontAwesomeIcons.doorClosed,
                  text: 'Saída',
                  flex: 1, categoria: 'Saída',
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
