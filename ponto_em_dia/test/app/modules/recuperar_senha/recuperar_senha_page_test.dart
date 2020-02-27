import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:ponto_em_dia/app/modules/recuperar_senha/recuperar_senha_page.dart';

main() {
  testWidgets('RecuperarSenhaPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(
        buildTestableWidget(RecuperarSenhaPage(title: 'RecuperarSenha')));
    final titleFinder = find.text('RecuperarSenha');
    expect(titleFinder, findsOneWidget);
  });
}
