import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'page_view_controller.g.dart';

class PageViewController = _PageViewBase with _$PageViewController;

abstract class _PageViewBase with Store {
  final pageController = PageController(
    initialPage: 0,
  );

  @observable
  int indexPagina = 0;

  @action
  void mudarPagina(int value) {
    this.indexPagina = value;
    pageController.animateToPage(
      value,
      duration: Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}
