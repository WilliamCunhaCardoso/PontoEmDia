import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'package:ponto_em_dia/app/modules/historico/historico_controller.dart';

class CustomCard extends StatelessWidget {
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

  var controller = Modular.get<HistoricoController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: GradientCard(
        child: Container(
          height: 100,
          child: GestureDetector(
            onTap: () {
              controller.addPonto(this.categoria);
              print(this.categoria);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(this.icon, size: 40),
                Text(
                  this.text,
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