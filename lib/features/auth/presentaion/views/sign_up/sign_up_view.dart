import 'package:comatecs/core/shared/widgets/custom_back_button.dart';
import 'package:comatecs/features/auth/widgets/sign_up/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:const CustomBackButton(),
        elevation: 0.0,
      ),
      body: const SignUpViewBody(),
    );
  }
}
