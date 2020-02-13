// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppBase, Store {
  final _$indexPaginaAtom = Atom(name: '_AppBase.indexPagina');

  @override
  int get indexPagina {
    _$indexPaginaAtom.context.enforceReadPolicy(_$indexPaginaAtom);
    _$indexPaginaAtom.reportObserved();
    return super.indexPagina;
  }

  @override
  set indexPagina(int value) {
    _$indexPaginaAtom.context.conditionallyRunInAction(() {
      super.indexPagina = value;
      _$indexPaginaAtom.reportChanged();
    }, _$indexPaginaAtom, name: '${_$indexPaginaAtom.name}_set');
  }

  final _$_AppBaseActionController = ActionController(name: '_AppBase');

  @override
  void mudarPagina(int value) {
    final _$actionInfo = _$_AppBaseActionController.startAction();
    try {
      return super.mudarPagina(value);
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }
}
