import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notification Demo'),
      ),

      //
      body: Center(
        child: TextButton(
          child: Text('Show Notification'),
          onPressed: showNotification,
        ),
      ),
    );
  }

  void showNotification() async {
    //
    AwesomeNotifications awesomeNotifications = AwesomeNotifications();

    //
    String localTimeZone =
        await awesomeNotifications.getLocalTimeZoneIdentifier();

    awesomeNotifications.createNotification(
      //
      content: NotificationContent(
        id: 1,
        channelKey: 'TestNotification',
        title: 'Good Morning',
        body: 'This is the body part the notification',
        bigPicture: 'asset://images/face2.jpg',
        notificationLayout: NotificationLayout.BigPicture,
      ),

      //
      // schedule: NotificationInterval(
      //   timeZone: localTimeZone,
      //   interval: 5,
      // ),

      // schedule: NotificationCalendar(
      //   timeZone: localTimeZone,
      //   year: 2022,
      //   month: 1,
      //   day: 19,
      //   hour: 9,
      //   minute: 24,
      //   second: 0,
      // ),
      actionButtons: [
        NotificationActionButton(
          key: 'Test',
          label: 'Buy Now',
          buttonType: ActionButtonType.InputField,
        ),
      ],
    );
  }
}
