import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  @observable
  int indexPagina = 0;

  @action
  void mudarPagina(int value) {
    this.indexPagina = value;
    // switch (value) {
    //   case 0:
    //     Modular.to.pushReplacementNamed('/');
    //     break;
    //   case 1:
    //     Modular.to.pushReplacementNamed('/historico');
    //     break;
    //   case 2:
    //     Modular.to.pushReplacementNamed('/perfil');
    //     break;
    //   case 3:
    //     Modular.to.pushReplacementNamed('/configuracoes');
    //     break;
    //   default:
    // }
  }
}
