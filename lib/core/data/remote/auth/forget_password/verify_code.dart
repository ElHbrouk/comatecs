import 'package:comatecs/core/class/crud.dart';
import 'package:comatecs/link_api.dart';

class VerifyCodeForgetPasswordRemote {
  final Crud crud;
  VerifyCodeForgetPasswordRemote({required this.crud});

  postData({
    required String verifyCode,
    required String email,
  }) async {
    var response = await crud.postData(AppLinks.verifyCodeForgetPassword, {
      "email": email,
      "verifycode": verifyCode,
    });
    return response.fold((l) => l, (r) => r);
  }
}
