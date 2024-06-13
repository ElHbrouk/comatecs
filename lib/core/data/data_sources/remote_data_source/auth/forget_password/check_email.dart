import 'package:comatecs/core/class/crud.dart';
import 'package:comatecs/link_api.dart';

class CheckEmailRemote {
  final Crud crud;
  CheckEmailRemote({required this.crud});

  postData({
    required String email,
  }) async {
    var response = await crud.postData(AppLinks.checkEmail, {

      "email": email,
    });
    return response.fold((l) => l, (r) => r);
  }
}
