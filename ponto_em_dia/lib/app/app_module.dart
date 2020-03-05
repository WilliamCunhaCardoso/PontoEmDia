import 'package:ponto_em_dia/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';
import 'modules/historico/historico_controller.dart';
import 'modules/home/home_module.dart';
import 'modules/historico/historico_module.dart';
import 'modules/login/login_module.dart';
import 'modules/page_view/page_view_controller.dart';
import 'modules/page_view/page_view_module.dart';
import 'modules/perfil/perfil_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HistoricoController()),
        Bind((i) => PageViewController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router('/login', module: LoginModule()),
        Router('/perfil', module: PerfilModule()),
        Router('/historico', module: HistoricoModule()),
        Router('/pageview', module: PageViewModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
