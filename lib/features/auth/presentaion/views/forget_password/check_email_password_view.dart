import 'package:comatecs/controllers/auth_controllers/reset_password/forget_password_controller.dart';
import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
import 'package:comatecs/features/auth/widgets/reset_password/forget_password_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller =
        Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton()),
      body: CheckEmailViewBody(
        titleText: '13'.tr,
        onPressed: () {
          controller.goToVerifyCodePassword();
        },
      ),
    );
  }
}
