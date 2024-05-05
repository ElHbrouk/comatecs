import 'package:comatecs/core/constant/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class VerifySignUpController extends GetxController {
  checkEmail();

  void goToSignUpSuccess();
}

class VerifySignUpControllerImpl extends VerifySignUpController {
  late TextEditingController email;

  @override
  checkEmail() {}

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

  @override
  void goToSignUpSuccess() {
    Get.offAllNamed(AppRoutes.signUpSuccess);
  }
}
