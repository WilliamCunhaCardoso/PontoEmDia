import 'package:flutter_modular/flutter_modular.dart';

import 'page_view_controller.dart';
import 'page_view_page.dart';

class PageViewModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => PageViewController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => PageViewPage()),
      ];

  static Inject get to => Inject<PageViewModule>.of();
}
