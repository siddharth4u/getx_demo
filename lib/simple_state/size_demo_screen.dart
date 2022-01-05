import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'size_controller.dart';

class SizeDemoScreen extends StatelessWidget {
  //
  final SizeController sizeController = Get.put(SizeController());

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(),

      //
      body: GetBuilder<SizeController>(
        builder: (controller) => ListView(
          padding: EdgeInsets.all(16),
          children: [
            // Text

            Text(
              'Flutter',
              style: TextStyle(fontSize: sizeController.fontSize),
            ),

            //
            SizedBox(height: 32),

            // Slider
            Slider(
              min: 10,
              max: 50,
              value: sizeController.fontSize,
              onChanged: sizeController.updateFontSize,
            ),
          ],
        ),
      ),
    );
  }
}
