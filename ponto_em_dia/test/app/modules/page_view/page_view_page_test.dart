import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:ponto_em_dia/app/modules/page_view/page_view_page.dart';


main() {
  testWidgets('PageViewPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(PageViewPage(title: 'PageView')));
    final titleFinder = find.text('PageView');
    expect(titleFinder, findsOneWidget);
  });
}
