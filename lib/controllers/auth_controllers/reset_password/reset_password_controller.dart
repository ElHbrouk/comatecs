import 'package:comatecs/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  void goToSuccessResetPassowrd();
  resetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;
  @override
 void goToSuccessResetPassowrd() {
    Get.offNamed(AppRoutes.resetPasswordSuccessView);
  }

  @override
  resetPassword() {}

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }
}
