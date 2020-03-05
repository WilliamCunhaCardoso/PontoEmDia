// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_view_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageViewController on _PageViewBase, Store {
  final _$indexPaginaAtom = Atom(name: '_PageViewBase.indexPagina');

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

  final _$_PageViewBaseActionController =
      ActionController(name: '_PageViewBase');

  @override
  void mudarPagina(int value) {
    final _$actionInfo = _$_PageViewBaseActionController.startAction();
    try {
      return super.mudarPagina(value);
    } finally {
      _$_PageViewBaseActionController.endAction(_$actionInfo);
    }
  }
}
