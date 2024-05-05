import 'package:comatecs/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  void goToSignUp();
  void goToForgetPassword();
}

class LoginControllerImpl extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  GlobalKey<FormState> key = GlobalKey();
  @override
  login() {
    if (key.currentState!.validate()) {
      Get.offAllNamed(AppRoutes.homeView);
      Get.delete<LoginControllerImpl>();
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
    Get.toNamed(AppRoutes.signUpView);
  }

  @override
  void goToForgetPassword() {
    Get.toNamed(AppRoutes.forgetPasswordView);
  }
}
