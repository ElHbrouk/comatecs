import 'package:comatecs/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class CheckEmailController extends GetxController {
  checkEmail();
   void goToVerifyCodeSignUp();
}

class CheckEmailControllerImpl extends CheckEmailController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  void goToVerifyCodeSignUp() {
    Get.offNamed(AppRoutes.verifyCodeSignUpView);
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
