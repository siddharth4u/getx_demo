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

  //
  void updateRedColor(double newColorvalue) {
    redValue.value = newColorvalue.toInt();
    updateScafflodColor();
  }

  //
  void updateGreenColor(double newColorvalue) {
    greenValue.value = newColorvalue.toInt();
    updateScafflodColor();
  }

  //
  void updateBlueColor(double newColorvalue) {
    blueValue.value = newColorvalue.toInt();
    updateScafflodColor();
  }

  void updateScafflodColor() {
    scaffoldColor.value = Color.fromRGBO(
      redValue.value,
      greenValue.value,
      blueValue.value,
      1,
    );
  }
}
