import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/i18n/messages.dart';

class LanguageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Language Test'),

        //
        actions: [
          // En
          TextButton(
            child: Text(
              'EN',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              //
              Get.updateLocale(Locale('US', 'en'));
            },
          ),

          // Marathi
          TextButton(
            child: Text(
              'MR',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              //
              Get.updateLocale(Locale('IN', 'mr'));
            },
          ),

          // Hind
          TextButton(
            child: Text(
              'HI',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              //
              Get.updateLocale(Locale('IN', 'hi'));
            },
          ),
        ],
      ),
      body: Center(
        child: Text(Messages.gretting.tr),
        // child: Text('helo'.trParams({'name': 'Pavan'})),
        // child: Text('helo'.trParams({'name': '$name'})),
      ),
    );
  }
}
