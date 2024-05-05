import 'package:comatecs/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
 void goToVerifyCodePassword();
  
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  late TextEditingController email;

  @override
  checkEmail() {}

  @override
  void goToVerifyCodePassword() {
    Get.toNamed(AppRoutes.verifyCodePasswordView);
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
