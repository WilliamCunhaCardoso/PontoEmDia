import 'package:mobx/mobx.dart';

part 'configuracoes_controller.g.dart';

class ConfiguracoesController = _ConfiguracoesBase
    with _$ConfiguracoesController;

abstract class _ConfiguracoesBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
