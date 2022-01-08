import 'package:get/get.dart';
import 'package:flutter/material.dart';

class LoginController extends GetxController {
  //
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  //
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();

  //
  var isLoginEnabled = Rx<bool>(false);
  var isTermsNConditionAccted = Rx<bool>(false);

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
    mobileNumberController.dispose();
  }

  //
  void onNameValueChaned(String name) {
    validateAllFields();
  }

  //
  void onMobileNumberValueChaned(String name) {
    validateAllFields();
  }

  //
  void onTermsNConditionValueChanged(bool? termsNConctionValue) {
    isTermsNConditionAccted.value = termsNConctionValue!;

    validateAllFields();
  }

  //
  void validateAllFields() {
    //
    if (nameController.text.isEmpty) {
      isLoginEnabled.value = false;
      return;
    }

    if (nameController.text.contains(RegExp(r'[0-9]'))) {
      isLoginEnabled.value = false;
      return;
    }

    //
    // if (mobileNumberController.text.length != 10) {
    //   isLoginEnabled.value = false;
    //   return;
    // }

    final RegExp mobileRegExp = RegExp('[0-9]{10}'); 

    if(!mobileRegExp.hasMatch(mobileNumberController.text)){
      isLoginEnabled.value = false;
      return;
    }

    //
    if (!isTermsNConditionAccted.value) {
      isLoginEnabled.value = false;
      return;
    }

    isLoginEnabled.value = true;
  }

  //
  void performLogin() {
    //
  }
}
