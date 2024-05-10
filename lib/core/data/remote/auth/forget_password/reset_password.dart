import 'package:comatecs/core/class/crud.dart';
import 'package:comatecs/link_api.dart';

class ResetPasswordRemote {
  final Crud crud;
  ResetPasswordRemote({required this.crud});

  postData({
    required String password,
    required String email,
  }) async {
    var response = await crud.postData(AppLinks.resetPassword, {
      "password": password,
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
