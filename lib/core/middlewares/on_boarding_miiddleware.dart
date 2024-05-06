import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingMiddleware extends GetMiddleware {
  MyServices services = Get.find();
  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (services.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: AppRoutes.loginView);
    }

    return super.redirect(route);
  }
}
