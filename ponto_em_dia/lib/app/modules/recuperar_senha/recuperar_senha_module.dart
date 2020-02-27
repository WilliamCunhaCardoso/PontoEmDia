import 'package:ponto_em_dia/app/modules/recuperar_senha/recuperar_senha_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:ponto_em_dia/app/modules/recuperar_senha/recuperar_senha_page.dart';

class RecuperarSenhaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => RecuperarSenhaController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => RecuperarSenhaPage()),
      ];

  static Inject get to => Inject<RecuperarSenhaModule>.of();
}
