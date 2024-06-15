import 'package:comatecs/core/class/crud.dart';
import 'package:comatecs/link_api.dart';

class TestData {
  final Crud crud;
  TestData({required this.crud});

  getData() async {
    var response = await crud.postData(AppLinks.test, {});
    return response.fold((l) => l, (r) => r);
  }
}
