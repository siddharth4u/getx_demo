import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/counter_contoller.dart';
import 'package:getx_demo/widgets/counter_widget.dart';

class CounterScreen extends StatelessWidget {
  //
  final CounterController counterController = Get.put(CounterController());

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(),

      //
      body: Center(
        child: CounterWidget(),
      ),

      //
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //
          FloatingActionButton(
            child: Icon(Icons.remove),
            onPressed: () {
              counterController.decrement();
            },
          ),

          SizedBox(width: 16),

          //
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              counterController.increment();
            },
          ),
        ],
      ),
    );
  }
}
