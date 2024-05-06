import 'package:comatecs/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  void goToSignUp();
  void goToForgetPassword();
  void showPassword();
  customCheck();
}

class LoginControllerImpl extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> key = GlobalKey();
  bool isNotVisible = true;
  bool isChecked = false;

  @override
  login() {
    if (key.currentState!.validate()) {
      Get.offAllNamed(AppRoutes.homeView);
    } else {}
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  void goToSignUp() {
    Get.offNamed(AppRoutes.signUpView);
  }

  @override
  void goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPasswordView);
  }

  @override
  void showPassword() {
    isNotVisible = !isNotVisible;
    update();
  }

  @override
  customCheck() {
    isChecked = !isChecked;
    update();
  }
}
