import 'package:mobx/mobx.dart';

part 'historico_model.g.dart';

class HistoricoModel = _HistoricoModel with _$HistoricoModel;

abstract class _HistoricoModel with Store {
  @observable
  DateTime horario;
  
  @observable
  String categoria;

  @action
  setHorario(DateTime value) => horario = value;

  @action
  setCategoria(String value) => categoria = value;

  _HistoricoModel({this.categoria, this.horario});
}