import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'Ponto Em Dia',
      theme: ThemeData(
        primaryColor: Colors.black,
        cursorColor: Colors.black
      ),
      initialRoute: 'login',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
