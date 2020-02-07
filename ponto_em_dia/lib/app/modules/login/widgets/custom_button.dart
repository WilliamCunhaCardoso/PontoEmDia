import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';

class CustomButton extends StatelessWidget {
  final String titulo;
  final bool isSimple;
  final Function funcao;

  CustomButton({@required this.titulo, this.isSimple = false, @required this.funcao});

  @override
  Widget build(BuildContext context) {
    return GradientButton(
      callback: this.funcao,
      child: Text(
        this.titulo,
        style: TextStyle(color: this.isSimple ? Colors.black : null),
      ),
      gradient: this.isSimple ? Gradients.haze : Gradients.coldLinear,
      shadowColor: Gradients.coldLinear.colors.last.withOpacity(0.50),
    );
  }
}
