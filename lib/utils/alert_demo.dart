import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlertDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('Alert Demo'),
      ),

      //
      body: Center(
        child: TextButton(
          child: Text('Show AlertDialog'),
          onPressed: showAlertDialog,
        ),
      ),
    );
  }

  void showAlertDialog() {
    //
    Get.defaultDialog(
      title: 'Alert',
      middleText: 'Are you sure to close this app?',
      radius: 5,

      //content: Text('This part is called content'),
      // onCancel: () {
      //   //
      // },
      // onConfirm: () {
      //   //
      // },
      // //
      // cancel: TextButton(
      //   child: Text('No'),
      //   onPressed: () {
      //     //
      //   },
      // ),
      // //
      // confirm: TextButton(
      //   child: Text('Yes'),
      //   onPressed: () {
      //     //
      //   },
      // ),
      actions: [
        //
        TextButton(
          child: Text('Button1'),
          onPressed: () {
            //
          },
        ),

        //
        TextButton(
          child: Text('Button2'),
          onPressed: () {
            //
          },
        ),

        //
        TextButton(
          child: Text('Button3'),
          onPressed: () {
            //
          },
        ),
      ],
    );
  }
}
