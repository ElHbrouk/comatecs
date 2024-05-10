import 'package:comatecs/core/class/statues_request.dart';
import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/core/data/remote/auth/verify_code_signup_remote.dart';
import 'package:comatecs/core/functions/handling_data.dart';
import 'package:get/get.dart';

abstract class VerifySignUpController extends GetxController {
  checkEmail();

  void goToSignUpSuccess(String verifyCode);
}

class VerifySignUpControllerImpl extends VerifySignUpController {
 
  String? email;
  StatuesRequest? statuesRequest;
  VerifyCodeSignUpRemote verifyCodeSignUpRemote = VerifyCodeSignUpRemote(crud: Get.find());
  @override
  checkEmail() {}

  @override
  void onInit() {
    email = Get.arguments['email'];

    super.onInit();
  }

  @override
  void goToSignUpSuccess(verifyCode) async{
      statuesRequest = StatuesRequest.loading;
      update();
      var response = await verifyCodeSignUpRemote.postData(
     verifyCode: verifyCode,
        email: email!,
    
      );
      print("=============================== Controller $response ");
      statuesRequest = handlingData(response);
      if (StatuesRequest.success == statuesRequest) {
        if (response['status'] == "success") {
          // data.addAll(response['data']);
            Get.offAllNamed(AppRoutes.signUpSuccess);
          
        } else {
          Get.defaultDialog(
              title: "54".tr, middleText: "Verify code not correct");

          statuesRequest = StatuesRequest.failure;
        }
      }
      update();
  
  }
}
