import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:ponto_em_dia/app/modules/historico/historico_page.dart';

main() {
  testWidgets('HistoricoPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(HistoricoPage(title: 'Historico')));
    final titleFinder = find.text('Historico');
    expect(titleFinder, findsOneWidget);
  });
}
