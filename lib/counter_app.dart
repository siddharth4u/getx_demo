import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterApp extends StatelessWidget {
  //
  var counter = 0.obs;

  //
  @override
  Widget build(BuildContext context) {
    print('build called');
    return Scaffold(
      //
      appBar: AppBar(),

      //
      body: Center(
        child: Obx(() {
          print('Text called');
          return Text('Counter  $counter');
        }),
      ),

      //
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
    );
  }

  //
  void increment() {
    counter++;
  }
}
