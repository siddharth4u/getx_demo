import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  //
  final GlobalKey<FormState> registraionFormKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final Student student = Student();

  //
  var hidePassword = true.obs;

  //
  @override
  void onInit() {
    super.onInit();
  }

  //
  @override
  void onClose() {
    super.onClose();

    //
    nameController.dispose();
  }

  // validate the name textfield
  String? validateName(String? name) {
    if (name!.isEmpty) {
      return 'Please write your name';
    }

    return null;
  }

  // save the name value
  void saveName(String? name) {
    student.name = name!;
  }

  // validate email
  String? validateEmail(String? email) {
    if (email!.isEmpty) {
      return 'Please provide email';
    }

    if (!GetUtils.isEmail(email)) {
      return 'Invalid email Id';
    }

    return null;
  }

  // save value of email
  void saveEmail(String? email) {
    student.email = email!;
  }

// validate password
  String? validatePassword(String? password) {
    if (password!.isEmpty) {
      return 'Please provide password';
    }

    if (password.length < 6) {
      return 'Atleast 6 characters required';
    }

    return null;
  }

  // save value of password
  void savePassword(String? password) {
    student.password = password!;
  }

  // toogle the passwod visibilty
  void togglePassword() {
    hidePassword.value = !hidePassword.value;
  }

  // validate the entire form
  void validateRegistrationForm() {
    final bool isValidate = registraionFormKey.currentState!.validate();

    if (!isValidate) {
      return;
    }

    registraionFormKey.currentState!.save();

    //
    // go ahed for further taks
  }
}

//
class Student {
  late String name;
  late String email;
  late String password;
}
