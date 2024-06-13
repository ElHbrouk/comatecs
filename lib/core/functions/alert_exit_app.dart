import 'dart:io';

import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

alertExitApp() {
  Get.defaultDialog(
    titleStyle: AppFonts.bold18,
    middleTextStyle: AppFonts.bold16,
    title: "54".tr, // Alert
    middleText: "55".tr, // Do you want to exit app?
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text(
          "56".tr, //Yup!
          style: AppFonts.bold16,
        ),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text(
          "57".tr, // Nope!
          style: AppFonts.bold16,
        ),
      ),
    ],
  );
}
