import 'package:comatecs/core/class/statues_request.dart';
import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/core/data/remote/auth/forget_password/verify_code.dart';
import 'package:comatecs/core/functions/handling_data.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
  void goToResetPassword(String verrifyCode);
}

class VerifyCodePasswordControllerImpl extends VerifyCodeController {
  String? email;
  VerifyCodeForgetPasswordRemote codeForgetPasswordRemote =
      VerifyCodeForgetPasswordRemote(crud: Get.find());
  StatuesRequest? statuesRequest;
  @override
  void goToResetPassword(verrifyCode) async {
    statuesRequest = StatuesRequest.loading;
    update();
    var response = await codeForgetPasswordRemote.postData(
      verifyCode: verrifyCode,
      email: email!,
    );
    print("=============================== Controller $response ");
    statuesRequest = handlingData(response);
    if (StatuesRequest.success == statuesRequest) {
      if (response['status'] == "success") {
       Get.offNamed(AppRoutes.resetPasswordView,arguments: {
        "email":email,
       });
      } else {
        Get.defaultDialog(
            title: "54".tr, middleText: "Verify Code is not correct");

        statuesRequest = StatuesRequest.failure;
      }
    }
    update();

  }

  @override
  checkCode() {}
  @override
  void onInit() {
    email = Get.arguments['email'];
    super.onInit();
  }
}
