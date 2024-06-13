import 'package:comatecs/core/class/crud.dart';
import 'package:comatecs/link_api.dart';

class LoginRemote {
  final Crud crud;
  LoginRemote({required this.crud});

  postData({
    required String password,
    required String email,
  }) async {
    var response = await crud.postData(AppLinks.login, {
      "password": password,
      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
