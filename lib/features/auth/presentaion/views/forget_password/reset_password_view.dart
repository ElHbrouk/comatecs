import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
import 'package:comatecs/features/auth/widgets/reset_password/reset_password_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(),
      ),
      body: const ResetPasswordViewBody(),
    );
  }
}
