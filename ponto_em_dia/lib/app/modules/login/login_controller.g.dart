// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginController on _LoginBase, Store {
  final _$nomeControllerAtom = Atom(name: '_LoginBase.nomeController');

  @override
  TextEditingController get nomeController {
    _$nomeControllerAtom.context.enforceReadPolicy(_$nomeControllerAtom);
    _$nomeControllerAtom.reportObserved();
    return super.nomeController;
  }

  @override
  set nomeController(TextEditingController value) {
    _$nomeControllerAtom.context.conditionallyRunInAction(() {
      super.nomeController = value;
      _$nomeControllerAtom.reportChanged();
    }, _$nomeControllerAtom, name: '${_$nomeControllerAtom.name}_set');
  }

  final _$passwdControllerAtom = Atom(name: '_LoginBase.passwdController');

  @override
  TextEditingController get passwdController {
    _$passwdControllerAtom.context.enforceReadPolicy(_$passwdControllerAtom);
    _$passwdControllerAtom.reportObserved();
    return super.passwdController;
  }

  @override
  set passwdController(TextEditingController value) {
    _$passwdControllerAtom.context.conditionallyRunInAction(() {
      super.passwdController = value;
      _$passwdControllerAtom.reportChanged();
    }, _$passwdControllerAtom, name: '${_$passwdControllerAtom.name}_set');
  }

  final _$_LoginBaseActionController = ActionController(name: '_LoginBase');

  @override
  dynamic autenticacao() {
    final _$actionInfo = _$_LoginBaseActionController.startAction();
    try {
      return super.autenticacao();
    } finally {
      _$_LoginBaseActionController.endAction(_$actionInfo);
    }
  }
}
