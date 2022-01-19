import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/theme/theme_controller.dart';

class ThemeDemo extends StatelessWidget {
  //
  final ThemeController themeController = Get.put(ThemeController());

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('Theme Demo'),

        //
        actions: [
          Obx(
            () => Switch(
              value: themeController.isDarkTheme.value,
              onChanged: themeController.changeTheme,
            ),
          ),
        ],
      ),

      //
    );
  }
}
