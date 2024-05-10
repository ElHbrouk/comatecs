import 'package:comatecs/core/class/crud.dart';
import 'package:comatecs/link_api.dart';

class SignUpRemote {
  final Crud crud;
  SignUpRemote({required this.crud});

  postData({
    required String username,
    required String password,
    required String email,
    required String phone,
  }) async {
    var response = await crud.postData(AppLinks.signUp, {
      "username": username,
      "password": password,
      "email": email,
      "phone": phone,
    });
    return response.fold((l) => l, (r) => r);
  }
}
