import 'package:comatecs/core/functions/alert_exit_app.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/sign_up/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) {
            return;
          }
          alertExitApp();
        },
        child: const SignUpViewBody(),
      ),
    );
  }
}
