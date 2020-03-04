import 'package:mobx/mobx.dart';

part 'page_view_controller.g.dart';

class PageViewController = _PageViewBase with _$PageViewController;

abstract class _PageViewBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
