import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  @observable
  int indexPagina = 0;

  @action
  void mudarPagina(int value) {
    // todo: Mudança de pagina
    this.indexPagina = value;
    switch (value) {
      case 0:
        Modular.to.pushNamed('/');
        break;
      case 1:
        Modular.to.pushNamed('/historico');
        break;
      case 2:
        Modular.to.pushNamed('/perfil');
        break;
      case 3:
        Modular.to.pushNamed('/configuracoes');
        break;
      default:
    }
  }
}
