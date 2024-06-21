// import 'package:comatecs/core/class/statues_request.dart';
// import 'package:comatecs/core/utils/routes.dart';
// import 'package:comatecs/core/data/data_sources/remote_data_source/auth/verify_code_signup_remote.dart';
// import 'package:comatecs/core/functions/handling_data.dart';
// import 'package:get/get.dart';

// abstract class VerifySignUpController extends GetxController {
//   checkEmail();

//   void goToSignUpSuccess(String verifyCode);
// }

// class VerifySignUpControllerImpl extends VerifySignUpController {
//   String? email;
//   StatuesRequest statuesRequest = StatuesRequest.none;
//   VerifyCodeSignUpRemote verifyCodeSignUpRemote =
//       VerifyCodeSignUpRemote(crud: Get.find());
//   @override
//   checkEmail() {}

//   @override
//   void onInit() {
//     email = Get.arguments['email'];

//     super.onInit();
//   }

//   @override
//   void goToSignUpSuccess(verifyCode) async {
//     statuesRequest = StatuesRequest.loading;
//     update();
//     var response = await verifyCodeSignUpRemote.postData(
//       verifyCode: verifyCode,
//       email: email!,
//     );

//     statuesRequest = handlingData(response);
//     if (StatuesRequest.success == statuesRequest) {
//       if (response['status'] == "success") {
//         // data.addAll(response['data']);
//         Get.offAllNamed(AppRoutes.signUpSuccess);
//       } else {
//         Get.defaultDialog(
//             title: "54".tr, middleText: "Verify code not correct");

//         statuesRequest = StatuesRequest.failure;
//       }
//     }
//     update();
//   }
// }
