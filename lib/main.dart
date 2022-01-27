import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/i18n/my_translations.dart';
import 'notifications/notification_demo.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:firebase_core/firebase_core.dart';

/*
  This is new Line from me!
  App Settings
  -------------
  1) Install depdendency
    i) firebase_messaging
    ii) awesome_notification


  2) Create new project & configure and add it to firebase 


  Write the following code
*/


void main() async {
  //
  WidgetsFlutterBinding.ensureInitialized();

  //
  AwesomeNotifications().initialize(
    'resource://drawable/notification_image',
    [
      NotificationChannel(
        channelKey: 'FirebaseNotificationKey',
        channelName: 'FireabaseNotification',
        channelDescription: 'Test channel for firebase notifications',
      ),
    ],
  );

  //
  await Firebase.initializeApp();

  //
  FirebaseMessaging.onBackgroundMessage(showMessage);
  
  String? deviceToken = await FirebaseMessaging.instance.getToken(); 
  print('Device Token = $deviceToken');

  runApp(MyApp());
}


//
Future<void> showMessage(RemoteMessage message) async {
  //
  await Firebase.initializeApp();
  //
  await AwesomeNotifications().createNotificationFromJsonData(message.data);
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
