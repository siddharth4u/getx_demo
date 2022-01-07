import 'package:flutter/material.dart';
import 'package:getx_demo/formValidation/registration_conroller.dart';
import 'package:get/get.dart';

class RegistrationScreen extends StatelessWidget {
  //
  final RegistrationController registrationController =
      Get.put(RegistrationController());

  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(
        title: Text('Registration'),
      ),

      //
      body: Form(
        //
        key: registrationController.registraionFormKey,

        //
        autovalidateMode: AutovalidateMode.onUserInteraction,

        //
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            //
            TextFormField(
              decoration: InputDecoration(hintText: 'Name'),

              // controller
              controller: registrationController.nameController,

              // validator
              validator: registrationController.validateName,

              // onSave
              onSaved: registrationController.saveName,
            ),

            //
            SizedBox(height: 16),

            // email
            TextFormField(
              decoration: InputDecoration(hintText: 'Email'),

              //
              controller: registrationController.emailController,

              //
              validator: registrationController.validateEmail,

              //
              onSaved: registrationController.saveEmail,
            ),

            SizedBox(height: 16),

            // email
            Obx(
              () => TextFormField(
                //
                obscureText:
                    registrationController.hidePassword.value ? true : false,

                //
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: IconButton(
                    icon: registrationController.hidePassword.value
                        ? Icon(Icons.visibility_off)
                        : Icon(Icons.visibility),
                    onPressed: registrationController.togglePassword,
                  ),
                ),

                //
                controller: registrationController.passwordController,

                //
                validator: registrationController.validatePassword,

                //
                onSaved: registrationController.savePassword,
              ),
            ),

            SizedBox(height: 16),

            //
            ElevatedButton(
              child: Text('Register'),
              onPressed: registrationController.validateRegistrationForm,
            ),
          ],
        ),
      ),
    );
  }
}
