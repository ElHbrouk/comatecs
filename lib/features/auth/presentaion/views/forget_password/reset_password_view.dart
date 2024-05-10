import 'package:comatecs/core/functions/alert_exit_app.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/reset_password/reset_password_body.dart';
import 'package:flutter/material.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});

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
        child: const Padding(
          padding: EdgeInsets.only(top: 100.0),
          child: ResetPasswordViewBody(),
        ),
      ),
    );
  }
}
