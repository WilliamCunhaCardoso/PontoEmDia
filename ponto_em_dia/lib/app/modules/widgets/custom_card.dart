import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomCard({Key key, @required this.icon, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientCard(
      child: Container(
        width: 100,
        height: 100,
        child: Column(
          children: <Widget>[
            Icon(this.icon, size: 50,),
            Text(this.text, style: TextStyle(),),
          ],
        ),
      ),
      gradient: Gradients.taitanum,
    );
  }
}
