import 'package:ponto_em_dia/app/modules/historico/historico_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ponto_em_dia/app/modules/historico/historico_page.dart';

class HistoricoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HistoricoController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HistoricoPage()),
      ];

  static Inject get to => Inject<HistoricoModule>.of();
}
