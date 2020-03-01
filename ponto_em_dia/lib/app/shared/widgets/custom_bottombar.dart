import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ponto_em_dia/app/app_controller.dart';

class CustomBottomBar extends StatelessWidget {
  // * Instanciando Controller
  final appController = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => BubbleBottomBar(
        opacity: .2,
        currentIndex: appController.indexPagina,
        onTap: (value) => appController.mudarPagina(value),
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        // elevation: 8,
        hasInk: true, //new, gives a cute ink effect
        items: <BubbleBottomBarItem>[
          // * Home
          BubbleBottomBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.dashboard, color: Colors.black),
            activeIcon: Icon(Icons.dashboard, color: Colors.black),
            title: Text("Home"),
          ),
          // * Histórico
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.access_time, color: Colors.black),
              activeIcon: Icon(Icons.access_time, color: Colors.black),
              title: Text("Logs")),
          // * Perfil
          BubbleBottomBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.person, color: Colors.black),
              activeIcon: Icon(Icons.person, color: Colors.black),
              title: Text("Perfil")),
        ],
      ),
    );
  }
}
