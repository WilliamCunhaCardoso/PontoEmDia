import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  @observable
  TextEditingController nomeController;
  @observable
  TextEditingController passwdController;

  @action
  autenticacao(){

    limparControles();
  }

  limparControles(){
    this.nomeController.text='';
    this.passwdController.text='';
  }
}
