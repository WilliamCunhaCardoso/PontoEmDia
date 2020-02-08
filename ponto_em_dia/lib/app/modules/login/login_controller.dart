import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';

part 'login_controller.g.dart';

class LoginController = _LoginBase with _$LoginController;

abstract class _LoginBase with Store {
  TextEditingController nomeController = TextEditingController();
  TextEditingController passwdController = TextEditingController();

  autenticacao() {
    if (!(this.nomeController.value == null ||
        this.passwdController.value == null)) {
      limparControles();
    }
  }

  limparControles() {
    this.nomeController.text = '';
    this.passwdController.text = '';
  }
}
