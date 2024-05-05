import 'package:comatecs/controllers/auth_controllers/sign_up/check_email_controller.dart';
import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
import 'package:comatecs/features/auth/widgets/reset_password/forget_password_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckEmailSignUpView extends StatelessWidget {
  const CheckEmailSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    CheckEmailControllerImpl controller = Get.put(CheckEmailControllerImpl());
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton()),
      body: CheckEmailViewBody(
        titleText: '49'.tr,
        onPressed: () {
          controller.goToVerifyCodeSignUp();
        },
      ),
    );
  }
}
