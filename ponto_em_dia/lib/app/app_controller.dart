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
      case 0 :
        Modular.to.pushNamed('/');
        break;
      default:
    }
    print('index'+this.indexPagina.toString());
    print('valor recebido'+value.toString());
  }
}
