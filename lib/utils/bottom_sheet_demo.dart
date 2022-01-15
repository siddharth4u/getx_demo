import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('BottomSheet Demo'),
      ),

      //
      body: Center(
        child: TextButton(
          child: Text('Show BottomSeet'),
          onPressed: showBottomSheet,
        ),
      ),
    );
  }

  void showBottomSheet() {
    Get.bottomSheet(
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //
            ListTile(
              leading: Icon(Icons.camera),
              title: Text('Gallery'),
            ),

            //
            ListTile(
              leading: Icon(Icons.camera_alt),
              title: Text('Camera'),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      isDismissible: true,
    );
  }
}
