import 'package:comatecs/features/account/presentation/widgets/edit/edit_profile_view_body.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: EditProfileViewBody(),
      ),
    );
  }
}
