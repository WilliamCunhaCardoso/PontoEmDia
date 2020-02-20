import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:ponto_em_dia/app/modules/historico/historico_controller.dart';

class CustomCard extends StatefulWidget {
  final IconData icon;
  final String text;
  final int flex;
  final String categoria;

  CustomCard(
      {Key key,
      @required this.icon,
      @required this.text,
      @required this.flex,
      @required this.categoria})
      : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  var controller = Modular.get<HistoricoController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.widget.flex,
      child: GradientCard(
        child: Container(
          height: 100,
          child: GestureDetector(
            onTap: () {
              controller.addPonto(this.widget.categoria);
              print(this.widget.categoria);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(this.widget.icon, size: 40),
                Text(
                  this.widget.text,
                  textAlign: TextAlign.center,
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ),
        gradient: Gradients.haze,
      ),
    );
  }
}
