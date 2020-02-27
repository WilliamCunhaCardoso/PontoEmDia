import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ponto_em_dia/app/modules/recuperar_senha/recuperar_senha_controller.dart';
import 'package:ponto_em_dia/app/modules/recuperar_senha/recuperar_senha_module.dart';

void main() {
  initModule(RecuperarSenhaModule());
  RecuperarSenhaController recuperarsenha;

  setUp(() {
    recuperarsenha = RecuperarSenhaModule.to.get<RecuperarSenhaController>();
  });

  group('RecuperarSenhaController Test', () {
    test("First Test", () {
      expect(recuperarsenha, isInstanceOf<RecuperarSenhaController>());
    });

    test("Set Value", () {
      expect(recuperarsenha.value, equals(0));
      recuperarsenha.increment();
      expect(recuperarsenha.value, equals(1));
    });
  });
}
