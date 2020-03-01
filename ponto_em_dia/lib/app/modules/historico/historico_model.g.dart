// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'historico_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HistoricoModel on _HistoricoModel, Store {
  final _$horarioAtom = Atom(name: '_HistoricoModel.horario');

  @override
  DateTime get horario {
    _$horarioAtom.context.enforceReadPolicy(_$horarioAtom);
    _$horarioAtom.reportObserved();
    return super.horario;
  }

  @override
  set horario(DateTime value) {
    _$horarioAtom.context.conditionallyRunInAction(() {
      super.horario = value;
      _$horarioAtom.reportChanged();
    }, _$horarioAtom, name: '${_$horarioAtom.name}_set');
  }

  final _$categoriaAtom = Atom(name: '_HistoricoModel.categoria');

  @override
  String get categoria {
    _$categoriaAtom.context.enforceReadPolicy(_$categoriaAtom);
    _$categoriaAtom.reportObserved();
    return super.categoria;
  }

  @override
  set categoria(String value) {
    _$categoriaAtom.context.conditionallyRunInAction(() {
      super.categoria = value;
      _$categoriaAtom.reportChanged();
    }, _$categoriaAtom, name: '${_$categoriaAtom.name}_set');
  }

  final _$iconeAtom = Atom(name: '_HistoricoModel.icone');

  @override
  IconData get icone {
    _$iconeAtom.context.enforceReadPolicy(_$iconeAtom);
    _$iconeAtom.reportObserved();
    return super.icone;
  }

  @override
  set icone(IconData value) {
    _$iconeAtom.context.conditionallyRunInAction(() {
      super.icone = value;
      _$iconeAtom.reportChanged();
    }, _$iconeAtom, name: '${_$iconeAtom.name}_set');
  }

  final _$_HistoricoModelActionController =
      ActionController(name: '_HistoricoModel');

  @override
  dynamic setHorario(DateTime value) {
    final _$actionInfo = _$_HistoricoModelActionController.startAction();
    try {
      return super.setHorario(value);
    } finally {
      _$_HistoricoModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setCategoria(String value) {
    final _$actionInfo = _$_HistoricoModelActionController.startAction();
    try {
      return super.setCategoria(value);
    } finally {
      _$_HistoricoModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIcone(IconData value) {
    final _$actionInfo = _$_HistoricoModelActionController.startAction();
    try {
      return super.setIcone(value);
    } finally {
      _$_HistoricoModelActionController.endAction(_$actionInfo);
    }
  }
}
