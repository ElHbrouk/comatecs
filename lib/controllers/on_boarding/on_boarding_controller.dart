// import 'package:comatecs/core/utils/routes.dart';
// import 'package:comatecs/core/services/services.dart';
// import 'package:comatecs/features/on_boarding/data/data_sources/static/static.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:path/path.dart';

// abstract class OnBoardingController extends GetxController {
//   next(context);
//   onPageChanged(int index);
//   skip(context);
// }

// class OnBoardingControllerImpl extends OnBoardingController {
//   int currentPage = 0;
//   late PageController pageController = PageController();
//   // MyServices services = Get.find();
//   @override
//   next(context) {
//     currentPage++;
//     if (currentPage > onBoardingList.length - 1) {
//      context.goNamed(AppRoutes.loginView);
//       // services.sharedPreferences.setString("step", "1");
//     } else {
//       pageController.animateToPage(currentPage,
//           duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
//     }
//     update();
//   }

//   @override
//   onPageChanged(int index) {
//     currentPage = index;
//     update();
//   }

//   @override
//   void onInit() {
//     pageController;
//     super.onInit();
//   }

//   @override
//   skip(context) {
//     // services.sharedPreferences.setString("step", "1");
//     context.goNamed(AppRoutes.loginView);
//     Get.delete<OnBoardingControllerImpl>();
//   }

//   @override
//   void dispose() {
//     pageController.dispose();
//     super.dispose();
//   }
// }
