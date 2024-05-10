import 'package:comatecs/core/class/statues_request.dart';
import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/core/data/remote/auth/forget_password/reset_password.dart';
import 'package:comatecs/core/functions/handling_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();
  visiblePassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  late TextEditingController password;
  late TextEditingController rePassword;
  GlobalKey<FormState> key = GlobalKey();
  bool secureText = true;
  StatuesRequest? statuesRequest;
  ResetPasswordRemote resetPasswordRemote =
      ResetPasswordRemote(crud: Get.find());
  String? email;

  @override
  resetPassword() async {
    if (password.text != rePassword.text) {
      return Get.defaultDialog(
        title: "54".tr,
        middleText: "Password  is not Match",
      );
    }
    if (key.currentState!.validate()) {
      statuesRequest = StatuesRequest.loading;
      update();
      var response = await resetPasswordRemote.postData(
        password: password.text,
        email: email!,
      );
      print("=============================== Controller $response ");
      statuesRequest = handlingData(response);
      if (StatuesRequest.success == statuesRequest) {
        if (response['status'] == "success") {
          Get.offAllNamed(AppRoutes.resetPasswordSuccessView);
        } else {
          Get.defaultDialog(
              title: "54".tr, middleText: "Something went wrong try again");

          statuesRequest = StatuesRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    email = Get.arguments['email'];
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  visiblePassword() {
    secureText = !secureText;
    update();
  }
}