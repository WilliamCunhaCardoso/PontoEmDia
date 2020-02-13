import 'package:mobx/mobx.dart';

part 'historico_controller.g.dart';

class HistoricoController = _HistoricoBase with _$HistoricoController;

abstract class _HistoricoBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
