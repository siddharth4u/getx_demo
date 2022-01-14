import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = Get.arguments;

    return Scaffold(
      //
      appBar: AppBar(
        title: Text('Page1'),
      ),

      //
      body: Center(
        child: Text('Hello, $name'),
      ),
    );
  }
}
