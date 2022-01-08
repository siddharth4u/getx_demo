import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/modren_validation/login_controller.dart';

class LoginScreen extends StatelessWidget {
  //
  final LoginController loginController = Get.put(LoginController());

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('Login'),
      ),

      //

      body: Form(
        //
        key: loginController.loginFormKey,

        //
        child: ListView(
          padding: EdgeInsets.all(16),

          //
          children: [
            // name
            TextFormField(
              decoration: InputDecoration(hintText: 'Name'),
              textCapitalization: TextCapitalization.words,

              //
              controller: loginController.nameController,

              //
              onChanged: loginController.onNameValueChaned,
            ),

            SizedBox(height: 32),

            // phone number
            TextFormField(
              decoration: InputDecoration(
                //
                hintText: 'Phone Number',

                //
                prefixIcon: Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('+91 '),
                ),

                counterText: '',
              ),
              keyboardType: TextInputType.number,
              maxLength: 10,

              //
              controller: loginController.mobileNumberController,

              //
              onChanged: loginController.onMobileNumberValueChaned,
            ),

            SizedBox(height: 32),

            // show and hide button

            // Obx(
            //   () => ElevatedButton(
            //     child: Text('Logn'),
            //     onPressed: loginController.isLoginEnabled.value
            //         ? loginController.performLogin
            //         : null,
            //   ),
            // ),

            // Accept terms and conditions checkbox
            Row(
              children: [
                //
                Obx(
                  () => Checkbox(
                    value: loginController.isTermsNConditionAccted.value,
                    onChanged: loginController.onTermsNConditionValueChanged,
                  ),
                ),

                //
                Text('Accept terms and conditions'),
              ],
            ),

            SizedBox(height: 32),

            // login button
            Obx(
              () => MaterialButton(
                color: loginController.isLoginEnabled.value
                    ? Colors.blue
                    : Colors.blue.withOpacity(0.25),
                child: Text('Login'),
                onPressed: () {
                  if (loginController.isLoginEnabled.value) {
                    loginController.performLogin();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
