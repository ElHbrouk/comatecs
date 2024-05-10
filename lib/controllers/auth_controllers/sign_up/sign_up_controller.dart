import 'package:comatecs/core/class/statues_request.dart';
import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/core/data/remote/auth/signup_remote.dart';
import 'package:comatecs/core/functions/handling_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController {
  signUp();
  void goToLogin();

  void showPassword();
}

class SignUpControllerImpl extends SignUpController {
  late TextEditingController email;
  late TextEditingController userName;
  late TextEditingController phoneNumber;
  late TextEditingController password;
  GlobalKey<FormState> key = GlobalKey();
  bool isNotVisible = true;
  StatuesRequest statuesRequest = StatuesRequest.none;
  List data = [];
  SignUpRemote signUpRemote = SignUpRemote(crud: Get.find());
  @override
  signUp() async {
    if (key.currentState!.validate()) {
      statuesRequest = StatuesRequest.loading;
      update();
      var response = await signUpRemote.postData(
        username: userName.text,
        password: password.text,
        email: email.text,
        phone: phoneNumber.text,
      );

      statuesRequest = handlingData(response);
      if (StatuesRequest.success == statuesRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
          Get.toNamed(
            AppRoutes.verifyCodeSignUpView,
            arguments: {
              "email": email.text,
            },
          );
        } else {
          Get.defaultDialog(
              title: "54".tr, middleText: "Phone or Email Already Exists!");

          statuesRequest = StatuesRequest.failure;
        }
      }
      update();
    } else {}
  }

  @override
  void goToLogin() {
    Get.offAllNamed(AppRoutes.loginView);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    userName = TextEditingController();
    phoneNumber = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    userName.dispose();
    phoneNumber.dispose();
    super.dispose();
  }

  @override
  void showPassword() {
    isNotVisible = !isNotVisible;
    update();
  }
}
