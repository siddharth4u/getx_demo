import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Page2 extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('Page2'),
      ),

      //
      body: Center(
        child: TextButton(
          child: Text('Go Back'),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
