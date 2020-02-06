import 'package:mobx/mobx.dart';

part 'cadastro_controller.g.dart';

class CadastroController = _CadastroBase with _$CadastroController;

abstract class _CadastroBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
