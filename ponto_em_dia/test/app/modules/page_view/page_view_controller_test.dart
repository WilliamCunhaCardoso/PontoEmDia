import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ponto_em_dia/app/modules/page_view/page_view_controller.dart';
import 'package:ponto_em_dia/app/modules/page_view/page_view_module.dart';

void main() {
  initModule(PageViewModule());
  PageViewController pageview;

  setUp(() {
    pageview = PageViewModule.to.get<PageViewController>();
  });

  group('PageViewController Test', () {
    test("First Test", () {
      expect(pageview, isInstanceOf<PageViewController>());
    });
  });
}
