import 'package:oktoast/oktoast.dart';

toast(String value, int duracao) {
  return showToast(
    value,
    duration: Duration(seconds: duracao),
    position: ToastPosition.bottom,
  );
}
