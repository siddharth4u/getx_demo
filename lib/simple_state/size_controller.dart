import 'package:get/get.dart';

class SizeController extends GetxController {
  //
  double fontSize = 10;

  //
  void updateFontSize(double newSize) {
    fontSize = newSize;
    update();
  }
}
