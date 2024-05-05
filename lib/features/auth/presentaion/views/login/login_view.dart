import 'package:comatecs/core/functions/alert_exit_app.dart';
import 'package:comatecs/features/auth/presentaion/views/widgets/login/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PopScope(
          canPop: false,
          onPopInvoked: (didPop) {
            if (didPop) {}
            alertExitApp();
          },
          child: const LoginViewBody()),
    );
  }
}
