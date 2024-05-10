import 'package:comatecs/controllers/auth_controllers/sign_up/sign_up_controller.dart';
import 'package:get/get.dart';

class SignUpBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpControllerImpl(), fenix: true);
  }
}
