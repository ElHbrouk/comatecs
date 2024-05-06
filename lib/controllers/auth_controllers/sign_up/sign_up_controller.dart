import 'package:comatecs/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  void goToLogin();

  void showPassword();
}

class SignUpControllerImpl extends SignUpController {
  late TextEditingController email;
  late TextEditingController userName;
  late TextEditingController phoneNumber;
  late TextEditingController password;
  GlobalKey<FormState> key = GlobalKey();
  bool isNotVisible = true;

  @override
  signUp() {
    if (key.currentState!.validate()) {
      Get.offNamed(AppRoutes.verifyCodeSignUpView);
    } else {}
  }

  @override
  void goToLogin() {
    Get.offAllNamed(AppRoutes.loginView);
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

  @override
  void showPassword() {
    isNotVisible = !isNotVisible;
    update();
  }
}
