import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ponto_em_dia/app/modules/historico/historico_page.dart';
import 'package:ponto_em_dia/app/modules/home/home_page.dart';
import 'package:ponto_em_dia/app/modules/perfil/perfil_page.dart';

import '../../shared/widgets/custom_bottombar.dart';
import 'page_view_controller.dart';

class PageViewPage extends StatefulWidget {
  final String title;
  const PageViewPage({Key key, this.title = "PageView"}) : super(key: key);

  @override
  _PageViewPageState createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  // * Instanciando Controller
  final pageController = Modular.get<PageViewController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (value) => pageController.mudarPagina(value),
        pageSnapping: true,
        controller: pageController.pageController,
        children: <Widget>[
          HomePage(),
          HistoricoPage(),
          PerfilPage(),
        ],
      ),
      bottomNavigationBar: CustomBottomBar(),
    );
  }
}
