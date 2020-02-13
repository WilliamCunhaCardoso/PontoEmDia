import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final int flex;

  const CustomCard(
      {Key key, @required this.icon, @required this.text, @required this.flex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: GradientCard(
        child: Container(
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                this.icon,
                size: 40
              ),
              Text(
                this.text,
                textAlign: TextAlign.center,
                style: TextStyle(),
              ),
            ],
          ),
        ),
        gradient: Gradients.haze,
      ),
    );
  }
}
