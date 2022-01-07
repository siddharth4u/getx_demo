import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controllers/counter_contoller.dart';
import 'package:getx_demo/widgets/counter_widget.dart';

class CounterScreen extends StatelessWidget {
  //
  final CounterService conuterService = Get.put(CounterService());

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
              conuterService.decrement();
            },
          ),

          SizedBox(width: 16),

          //
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              conuterService.increment();
            },
          ),
        ],
      ),
    );
  }
}
