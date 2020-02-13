import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:ponto_em_dia/app/modules/configuracoes/configuracoes_page.dart';

main() {
  testWidgets('ConfiguracoesPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(ConfiguracoesPage(title: 'Configuracoes')));
    final titleFinder = find.text('Configuracoes');
    expect(titleFinder, findsOneWidget);
  });
}
