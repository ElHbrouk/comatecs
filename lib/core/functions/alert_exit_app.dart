import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

alertExitApp() {
  Get.defaultDialog(
    title: "Alert",
    middleText: "You want to exit app?",
    actions: [
      ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: const Text("Yup!"),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: const Text("Nope!"),
      ),
    ],
  );
}
