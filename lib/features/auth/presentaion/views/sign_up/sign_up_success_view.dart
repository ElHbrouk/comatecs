import 'package:comatecs/features/auth/widgets/success_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SuccessBody(
        buttonName: '4'.tr,
        message: '47'.tr,
      ),
    );
  }
}
