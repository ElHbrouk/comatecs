// import 'package:comatecs/controllers/test_controller.dart';
// import 'package:comatecs/core/class/handling_data_view.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class TestView extends StatefulWidget {
//   const TestView({super.key});

//   @override
//   State<TestView> createState() => _TestViewState();
// }

// class _TestViewState extends State<TestView> {
//   // bool? result;
//   // initData() async {
//   //   result = await checkConnectivity();
//   //
//   // }

//   // @override
//   // void initState() {
//   //   initData();
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     Get.put(TestController());

//     return Scaffold(
//       body: GetBuilder<TestController>(
//         builder: (controller) {
//           return HandlingDataView(
//             statuesRequest: controller.statuesRequest,
//             widget: ListView.builder(
//               itemCount: controller.data.length,
//               itemBuilder: (context, index) {
//                 return Text(
//                   '${controller.data}',
//                 );
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
