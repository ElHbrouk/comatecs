import 'package:comatecs/core/constant/routes.dart';
import 'package:comatecs/core/localization/change_local.dart';
import 'package:comatecs/core/shared/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends GetView<LocalController> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsetsDirectional.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                controller.changeLang(languageCode: "ar");
                Get.toNamed(AppRoutes.onBoardingView);
              },
              buttonName: "2".tr,
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                controller.changeLang(languageCode: "en");
                Get.toNamed(AppRoutes.onBoardingView);
              },
              buttonName: "3".tr,
            ),
          ],
        ),
      ),
    );
  }
}
