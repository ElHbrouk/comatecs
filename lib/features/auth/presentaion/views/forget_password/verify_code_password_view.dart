import 'package:comatecs/core/utils/widgets/custom_back_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/reset_password/verify_code_password_body.dart';
import 'package:flutter/material.dart';

class VerifyCodePasswordView extends StatelessWidget {
  const VerifyCodePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
      ),
      body: const VerifyCodePasswordBody(),
    );
  }
}
