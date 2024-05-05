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

  @override
  login() {}

 

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
