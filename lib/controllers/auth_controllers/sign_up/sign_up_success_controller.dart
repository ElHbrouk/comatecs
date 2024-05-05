import 'package:comatecs/core/constant/routes.dart';
import 'package:get/get.dart';

abstract class SignUpSuccessController extends GetxController {
  void goToLogin();
}

class SignUpSuccessControllerImpl extends SignUpSuccessController {
  @override
 void goToLogin() {
    Get.offAllNamed(AppRoutes.loginView);
  }
}
