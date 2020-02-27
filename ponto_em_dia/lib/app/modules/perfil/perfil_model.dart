import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'perfil_model.g.dart';

class PerfilModel = _PerfilModelBase with _$PerfilModel;

abstract class _PerfilModelBase with Store {
  // todo: implementar Avatar
  @observable
  String matricula;

  @observable
  String nome;

  @observable
  String email;

  @observable
  String cargo;

  @observable
  String gestor;

  @observable
  String departamento;

  _PerfilModelBase({
    @required this.matricula,
    @required this.nome,
    @required this.cargo,
    @required this.departamento,
    @required this.email,
    @required this.gestor,
  });
}
