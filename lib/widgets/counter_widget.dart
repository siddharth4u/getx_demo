import 'package:flutter/material.dart';
import 'package:getx_demo/controllers/counter_contoller.dart';
import 'package:get/get.dart';

class CounterWidget extends StatelessWidget {
  //
  final CounterController counterController = Get.find();

  //
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Text(
        '${counterController.count}',
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.bold,
          color: Colors.red,
        ),
      ),
    );
  }
}
