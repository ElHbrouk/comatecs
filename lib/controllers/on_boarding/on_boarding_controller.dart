import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/features/on_boarding/data/data_sources/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
  skip();
}

class OnBoardingControllerImpl extends OnBoardingController {
  int currentPage = 0;
  late PageController pageController = PageController();
  @override
  next() {
    currentPage++;
    if (currentPage > onBoardingList.length - 1) {
      Get.offAllNamed(AppRoutes.loginView);
      Get.delete<OnBoardingControllerImpl>();
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }
    update();
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController;
    super.onInit();
  }

  @override
  skip() {
    Get.offAllNamed(AppRoutes.loginView);
    Get.delete<OnBoardingControllerImpl>();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
