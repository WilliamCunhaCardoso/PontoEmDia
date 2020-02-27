import 'package:mobx/mobx.dart';

part 'recuperar_senha_controller.g.dart';

class RecuperarSenhaController = _RecuperarSenhaBase
    with _$RecuperarSenhaController;

abstract class _RecuperarSenhaBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
