import 'package:comatecs/controllers/auth_controllers/forget_password/forget_password_controller.dart';
import 'package:comatecs/core/class/statues_request.dart';
import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
import 'package:comatecs/core/shared/widgets/loading.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/reset_password/forget_password_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
        appBar: AppBar(leading: const CustomBackButton()),
        body: GetBuilder<ForgetPasswordControllerImpl>(
          builder: (controller) =>
              controller.statuesRequest == StatuesRequest.loading
                  ? const Loading()
                  : CheckEmailViewBody(
                      titleText: '13'.tr,
                      onPressed: () {
                        controller.checkEmail();
                      },
                    ),
        ));
  }
}
