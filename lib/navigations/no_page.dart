import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('No Such Page'),
      ),

      //
      body: Center(
        child: TextButton(
          child: Text('There is no such page\nGo Back'),
          onPressed: () {
            Get.back();
          },
        ),
      ),
    );
  }
}
