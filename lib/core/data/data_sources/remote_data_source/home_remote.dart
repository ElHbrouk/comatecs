import 'package:comatecs/core/class/crud.dart';
import 'package:comatecs/link_api.dart';

class HomeRemote {
  final Crud crud;
  HomeRemote({required this.crud});

  getData() async {
    var response = await crud.postData(AppLinks.homeView, {});
    return response.fold((l) => l, (r) => r);
  }
}
