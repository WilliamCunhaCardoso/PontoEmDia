// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historico_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HistoricoController on _HistoricoBase, Store {
  final _$historicoAtom = Atom(name: '_HistoricoBase.historico');

  @override
  ObservableList<HistoricoModel> get historico {
    _$historicoAtom.context.enforceReadPolicy(_$historicoAtom);
    _$historicoAtom.reportObserved();
    return super.historico;
  }

  @override
  set historico(ObservableList<HistoricoModel> value) {
    _$historicoAtom.context.conditionallyRunInAction(() {
      super.historico = value;
      _$historicoAtom.reportChanged();
    }, _$historicoAtom, name: '${_$historicoAtom.name}_set');
  }

  final _$_HistoricoBaseActionController =
      ActionController(name: '_HistoricoBase');

  @override
  void addPonto(String value) {
    final _$actionInfo = _$_HistoricoBaseActionController.startAction();
    try {
      return super.addPonto(value);
    } finally {
      _$_HistoricoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removerPonto(HistoricoModel ponto) {
    final _$actionInfo = _$_HistoricoBaseActionController.startAction();
    try {
      return super.removerPonto(ponto);
    } finally {
      _$_HistoricoBaseActionController.endAction(_$actionInfo);
    }
  }
}
