import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/sign_up/verify_code_sign_up_body.dart';
import 'package:flutter/material.dart';

class VerifyCodeSignUpView extends StatelessWidget {
  const VerifyCodeSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
      ),
      body: const VerifyCodeSignUpBody(),
    );
  }
}
