import 'package:comatecs/core/class/crud.dart';
import 'package:comatecs/link_api.dart';

class VerifyCodeSignUpRemote {
  final Crud crud;
  VerifyCodeSignUpRemote({required this.crud});

  postData({
    required String email,
    required String verifyCode,
  }) async {
    var response = await crud.postData(AppLinks.verifyCodeSignUp, {
      "email": email,
      "verifycode": verifyCode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
