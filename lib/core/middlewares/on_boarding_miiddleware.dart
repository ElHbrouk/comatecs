import 'package:comatecs/core/utils/routes.dart';
import 'package:comatecs/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingMiddleware extends GetMiddleware {
  MyServices services = Get.find();
  @override
  int? get priority => 1;
  @override
  RouteSettings? redirect(String? route) {
    if (services.sharedPreferences.getString("step") == "2") {
      return const RouteSettings(name: AppRoutes.homeView);
    }
    if (services.sharedPreferences.getString("step") == "1") {
      return const RouteSettings(name: AppRoutes.loginView);
    }

    return super.redirect(route);
  }
}
