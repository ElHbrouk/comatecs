import 'package:comatecs/core/class/statues_request.dart';
import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/core/data/remote/auth/forget_password/check_email.dart';
import 'package:comatecs/core/functions/handling_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  checkEmail();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  late TextEditingController email;
  GlobalKey<FormState> key = GlobalKey();
  CheckEmailRemote checkEmailRemote = CheckEmailRemote(crud: Get.find());
  StatuesRequest statuesRequest = StatuesRequest.none;
  @override
  checkEmail() async {
    if (key.currentState!.validate()) {
      statuesRequest = StatuesRequest.loading;
      update();
      var response = await checkEmailRemote.postData(
        email: email.text,
      );

      statuesRequest = handlingData(response);
      if (StatuesRequest.success == statuesRequest) {
        if (response['status'] == "success") {
          Get.toNamed(
            AppRoutes.verifyCodePasswordView,
            arguments: {
              "email": email.text,
            },
          );
        } else {
          Get.defaultDialog(title: "54".tr, middleText: "Email is not correct");

          statuesRequest = StatuesRequest.failure;
        }
      }
      update();
    } else {}
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
