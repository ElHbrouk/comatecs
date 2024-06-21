// import 'package:comatecs/core/class/statues_request.dart';
// import 'package:comatecs/core/data/data_sources/remote_data_source/home_remote.dart';
// import 'package:comatecs/core/functions/handling_data.dart';
// import 'package:comatecs/core/services/services.dart';
// import 'package:get/get.dart';

// abstract class HomeController extends GetxController {
//   initialData();
//   getData();
// }

// class HomeControllerImpl extends HomeController {
//   // MyServices myServices = Get.find();
//   // String? username;
//   // String? id;
//   // HomeRemote homeRemote = HomeRemote(crud: Get.find());
//   // List data = [];
//   List categories = [];
//   // List items = [];

//   late StatuesRequest statuesRequest;
//   @override
//   initialData() {
//     // username = myServices.sharedPreferences.getString("username");
//     // id = myServices.sharedPreferences.getString("id");
//   }

//   @override
//   void onInit() {
//     getData();
//     initialData();
//     super.onInit();
//   }

//   @override
//   getData() async {
//     statuesRequest = StatuesRequest.loading;
//     // var response = await homeRemote.getData();

//     statuesRequest = handlingData(response);
//     if (StatuesRequest.success == statuesRequest) {
//       if (response['status'] == "success") {
//         categories.addAll(response['categories']);
//       } else {
//         statuesRequest = StatuesRequest.failure;
//       }
//     }
//     update();
//   }
// }
