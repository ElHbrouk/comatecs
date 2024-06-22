import 'package:comatecs/features/account/presentation/widgets/edit/edit_password_view_body.dart';
import 'package:flutter/material.dart';

class EditPasswordView extends StatelessWidget {
  const EditPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: EditPasswordViewBody(),
      ),
    );
  }
}
