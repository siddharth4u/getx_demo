import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'color_demo/color_screen.dart';
import 'counter_app.dart';
import 'screens/counter_screen.dart';
import 'simple_state/size_demo_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorScreen(),
    );
  }
}