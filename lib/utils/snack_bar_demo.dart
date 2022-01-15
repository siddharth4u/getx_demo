import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('Snackbar'),
      ),

      //
      body: Center(
        child: TextButton(
          child: Text('Show Snackbar'),
          onPressed: showSnackbar,
        ),
      ),
    );
  }

  void showSnackbar() {
    Get.snackbar(
      'Hello',
      'This is message for you app',
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
      margin: EdgeInsets.all(0),
      borderRadius: 0,
      titleText: Text('New Title'),
      messageText: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Line one of Message'),
          Text('Line two of Message'),
        ],
      ),
      mainButton: TextButton(
        child: Text('Undo'),
        onPressed: () {
          //
        },
      ),
      duration: Duration(seconds: 5),
      onTap: (GetSnackBar snackBar) {
        print('You clicked the snackbar');
      },
      isDismissible: false,
      //leftBarIndicatorColor: Colors.blue,
      //icon: Icon(Icons.person),
      showProgressIndicator: true,
    );
  }
}
