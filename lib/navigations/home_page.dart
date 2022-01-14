import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/navigations/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('HomePage'),
      ),

      //
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          //
          TextButton(
            child: Text('Goto Page1'),
            onPressed: () {
              Get.toNamed(Routes.page1, arguments: 'Sushil');
            },
          ),

          SizedBox(height: 16),

          //
          TextButton(
            child: Text('Goto Page2'),
            onPressed: () {
              Get.toNamed(Routes.page2);
            },
          ),
        ],
      ),
    );
  }
}
