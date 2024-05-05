import 'package:comatecs/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkCode();
 void goToResetPassword();

}

class VerifyCodePasswordControllerImpl extends VerifyCodeController {
  late String verifyCode;
  @override
 void goToResetPassword() {
    Get.offNamed(AppRoutes.resetPasswordView);
  }

  @override
  checkCode() {}

 
}
