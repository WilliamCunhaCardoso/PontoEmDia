import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:ponto_em_dia/app/modules/historico/historico_controller.dart';
import 'package:ponto_em_dia/app/modules/historico/historico_module.dart';

void main() {
  initModule(HistoricoModule());
  HistoricoController historico;

  setUp(() {
    historico = HistoricoModule.to.get<HistoricoController>();
  });

  group('HistoricoController Test', () {
    test("First Test", () {
      expect(historico, isInstanceOf<HistoricoController>());
    });

    test("Set Value", () {
      expect(historico.value, equals(0));
      historico.increment();
      expect(historico.value, equals(1));
    });
  });
}
