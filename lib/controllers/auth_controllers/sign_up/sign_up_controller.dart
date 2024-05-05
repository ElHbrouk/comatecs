import 'package:comatecs/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  void goToLogin();
}

class SignUpControllerImpl extends SignUpController {
  late TextEditingController email;
  late TextEditingController userName;
  late TextEditingController phoneNumber;
  late TextEditingController password;
  GlobalKey<FormState> key = GlobalKey();

  @override
  signUp() {
    if (key.currentState!.validate()) {
      Get.offNamed(AppRoutes.verifyCodeSignUpView);
      Get.delete<SignUpControllerImpl>();
    } else {}
  }

  @override
  void goToLogin() {
    Get.offNamed(AppRoutes.loginView);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    userName = TextEditingController();
    phoneNumber = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    userName.dispose();
    phoneNumber.dispose();
    super.dispose();
  }
}
