import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/formValidation/registration_scrren.dart';
import 'package:getx_demo/i18n/my_translations.dart';
import 'package:getx_demo/modren_validation/login_screen.dart';
import 'package:getx_demo/navigations/home_page.dart';
import 'package:getx_demo/navigations/no_page.dart';
import 'package:getx_demo/navigations/routes.dart';

import 'color_demo/color_screen.dart';
import 'counter_app.dart';
import 'i18n/language_test.dart';
import 'navigations/page1.dart';
import 'navigations/page2.dart';
import 'notifications/notification_demo.dart';
import 'screens/counter_screen.dart';
import 'simple_state/size_demo_screen.dart';
import 'theme/theme_demo.dart';
import 'utils/alert_demo.dart';
import 'utils/bottom_sheet_demo.dart';
import 'utils/snack_bar_demo.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

void main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();

  // create AwesomeNotifications object
  AwesomeNotifications awesomeNotifications = AwesomeNotifications();

  // initialize the AwesomeNotifications
  awesomeNotifications.initialize(
    'resource://drawable/notification_image',
    [
      NotificationChannel(
        channelKey: 'TestNotification',
        channelName: 'MyFirstNotification',
        channelDescription: 'This is the basic channel descreption',
      ),
    ],
  );

  // ensure & get the notification permission
  bool isNotificationAllowed =
      await awesomeNotifications.isNotificationAllowed();

  if (!isNotificationAllowed) {
    await awesomeNotifications.requestPermissionToSendNotifications();
  }

  // receive the notification
  awesomeNotifications.actionStream
      .listen((ReceivedNotification receivedNotification) {
    //
  });

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: NotificationDemo(),

      //
      translations: MyTranslations(),
      locale: Locale('US', 'en'),
    );
  }
}
