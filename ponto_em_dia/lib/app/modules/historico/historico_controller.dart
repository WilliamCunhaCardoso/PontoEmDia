import 'package:mobx/mobx.dart';
import 'package:ponto_em_dia/app/modules/historico/historico_model.dart';

part 'historico_controller.g.dart';

class HistoricoController = _HistoricoBase with _$HistoricoController;

abstract class _HistoricoBase with Store {
  @observable
  ObservableList<HistoricoModel> historico = ObservableList();

  @action
  void addPonto(String value) {
    HistoricoModel ponto = HistoricoModel(categoria: value, horario: DateTime.now());
    historico.add(ponto);
    print('ponto batido: '+value);
    print(historico.length);
  }

  @action
  void removerPonto(HistoricoModel ponto) => historico.remove(ponto);
}
