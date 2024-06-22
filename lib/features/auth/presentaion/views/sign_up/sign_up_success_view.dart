import 'package:comatecs/features/auth/presentaion/views/widgets/success_body.dart';
import 'package:flutter/material.dart';

class SignUpSuccess extends StatelessWidget {
  const SignUpSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SuccessBody(
        buttonName: "تسجيل الدخول",
        message: " تم إنشاء الحساب بنجاح",
      ),
    );
  }
}
