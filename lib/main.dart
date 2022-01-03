import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_app.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterApp(),
    );
  }
}