// import 'package:comatecs/core/class/statues_request.dart';
// import 'package:comatecs/core/utils/routes.dart';
// import 'package:comatecs/core/data/data_sources/remote_data_source/auth/login_remote.dart';
// import 'package:comatecs/core/functions/handling_data.dart';
// import 'package:comatecs/core/services/services.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/material.dart';


// abstract class LoginController extends GetxController {
//   login();
//   void goToSignUp();
//   void goToForgetPassword();
//   void showPassword();
//   customCheck();
// }

// class LoginControllerImpl extends LoginController {
//   late TextEditingController email;
//   late TextEditingController password;
//   GlobalKey<FormState> key = GlobalKey();
//   bool isNotVisible = true;
//   bool isChecked = false;
//   // MyServices myServices = Get.find();
//   StatuesRequest statuesRequest = StatuesRequest.none;
//   LoginRemote loginRemote = LoginRemote(crud: Get.find());
//   @override
//   login() async {
//     if (key.currentState!.validate()) {
//       statuesRequest = StatuesRequest.loading;
//       update();
//       var response = await loginRemote.postData(
//         password: password.text,
//         email: email.text,
//       );

//       statuesRequest = handlingData(response);
//       if (StatuesRequest.success == statuesRequest) {
//         if (response['status'] == "success") {
//           // myServices.sharedPreferences.setString("id", response['data']['users_id']);
//           // myServices.sharedPreferences
//           //     .setString("username", response['data']['users_name']);
//           // myServices.sharedPreferences
//           //     .setString("email", response['data']['users_email']);
//           // myServices.sharedPreferences
//           //     .setString("phone", response['data']['users_phone']);
//           // myServices.sharedPreferences.setString("step", '2');
//           Get.offAllNamed(AppRoutes.homeView);
//         } else {
//           Get.defaultDialog(
//               title: "54".tr, middleText: "Password or email is not correct");

//           statuesRequest = StatuesRequest.failure;
//         }
//       }
//       update();
//     } else {}
//   }

//   @override
//   void onInit() {
//     FirebaseMessaging.instance.getToken().then((value) {
//       print(value);
//       String? token = value;
//     });
//     email = TextEditingController();
//     password = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void dispose() {
//     email.dispose();
//     password.dispose();
//     super.dispose();
//   }

//   @override
//   void goToSignUp() {
//     Get.offNamed(AppRoutes.signUpView);
//   }

//   @override
//   void goToForgetPassword() {
//     Get.toNamed(AppRoutes.forgetPasswordView);
//   }

//   @override
//   void showPassword() {
//     isNotVisible = !isNotVisible;
//     update();
//   }

//   @override
//   customCheck() {
//     isChecked = !isChecked;
//     update();
//   }
// }
