import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/color_demo/color_controller.dart';

class ColorScreen extends StatelessWidget {
  //
  final ColorController colorController = Get.put(ColorController());

  //
  @override
  Widget build(BuildContext context) {
    return GetX<ColorController>(
      builder: (controller) => Scaffold(
        backgroundColor: colorController.scaffoldColor.value,
        //
        appBar: AppBar(
          title: Text('Color Screen'),
        ),

        //
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            // red
            Slider(
              min: colorController.minValue,
              max: colorController.maxValue,
              value: colorController.redValue.toDouble(),
              onChanged: colorController.updateRedColor,
            ),

            // green
            Slider(
              min: colorController.minValue,
              max: colorController.maxValue,
              value: colorController.greenValue.toDouble(),
              onChanged: colorController.updateGreenColor,
            ),

            // blue
            Slider(
              min: colorController.minValue,
              max: colorController.maxValue,
              value: colorController.blueValue.toDouble(),
              onChanged: colorController.updateBlueColor,
            ),
          ],
        ),
      ),
    );
  }
}
