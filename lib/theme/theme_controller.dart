import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ThemeController extends GetxController {
  var isDarkTheme = false.obs;

  void changeTheme(bool newThemeValue) {
    isDarkTheme.value = newThemeValue;

    if (isDarkTheme.value) {
      Get.changeTheme(ThemeData.dark());
    } else {
      Get.changeTheme(ThemeData.light());
    }
  }
}
