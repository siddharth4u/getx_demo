import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  //
  var redValue = 255.obs;
  var greenValue = 255.obs;
  var blueValue = 255.obs;
  var scaffoldColor = Colors.white.obs;

  //
  final minValue = 0.0;
  final maxValue = 255.0;

  @override
  void onInit() {
    super.onInit();

    //
    everAll([redValue, greenValue, blueValue], updateScafflodColor);

    debounce(redValue, (value) {}, time: Duration(milliseconds: 100));
  }

  //
  void updateRedColor(double newColorvalue) {
    redValue.value = newColorvalue.toInt();
  }

  //
  void updateGreenColor(double newColorvalue) {
    greenValue.value = newColorvalue.toInt();
  }

  //
  void updateBlueColor(double newColorvalue) {
    blueValue.value = newColorvalue.toInt();
  }

  void updateScafflodColor(newValue) {
    scaffoldColor.value = Color.fromRGBO(
      redValue.value,
      greenValue.value,
      blueValue.value,
      1,
    );
  }
}
