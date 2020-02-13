import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ponto_em_dia/app/app_controller.dart';

class CustomBottomBar extends StatelessWidget {
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
            backgroundColor: Colors.red,
            icon: Icon(Icons.dashboard, color: Colors.black),
            activeIcon: Icon(Icons.dashboard, color: Colors.red),
            title: Text("Home"),
          ),
          // * Histórico
          BubbleBottomBarItem(
              backgroundColor: Colors.deepPurple,
              icon: Icon(Icons.access_time, color: Colors.black),
              activeIcon: Icon(Icons.access_time, color: Colors.deepPurple),
              title: Text("Logs")),
          // * Perfil
          BubbleBottomBarItem(
              backgroundColor: Colors.indigo,
              icon: Icon(Icons.folder_open, color: Colors.black),
              activeIcon: Icon(Icons.folder_open, color: Colors.indigo),
              title: Text("Folders")),
          // * Configurações
          BubbleBottomBarItem(
              backgroundColor: Colors.green,
              icon: Icon(Icons.settings, color: Colors.black),
              activeIcon: Icon(Icons.settings, color: Colors.green),
              title: Text("Menu"))
        ],
      ),
    );
  }
}
