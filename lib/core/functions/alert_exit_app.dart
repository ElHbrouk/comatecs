import 'dart:io';

import 'package:comatecs/core/constant/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

alertExitApp() {
  Get.defaultDialog(
    titleStyle: AppStyles.bold18,
    middleTextStyle: AppStyles.bold16,
    title: "54".tr, // Alert
    middleText: "55".tr, // Do you want to exit app?
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text(
          "56".tr, //Yup!
          style: AppStyles.bold16,
        ),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text(
          "57".tr, // Nope!
          style: AppStyles.bold16,
        ),
      ),
    ],
  );
}
