import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/formValidation/registration_scrren.dart';
import 'package:getx_demo/modren_validation/login_screen.dart';
import 'package:getx_demo/navigations/home_page.dart';
import 'package:getx_demo/navigations/no_page.dart';
import 'package:getx_demo/navigations/routes.dart';

import 'color_demo/color_screen.dart';
import 'counter_app.dart';
import 'navigations/page1.dart';
import 'navigations/page2.dart';
import 'screens/counter_screen.dart';
import 'simple_state/size_demo_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomePage(),

      //
      getPages: [
        GetPage(name: Routes.page1, page: () => Page1()),
        GetPage(name: Routes.page2, page: () => Page2()),
        // GetPage(name: '/', page: () => HomePage()),
      ],

      //
      unknownRoute: GetPage(name: '/anypage', page: () => NoPage()),
      defaultTransition: Transition.zoom,
    );
  }
}
