import 'package:comatecs/core/utils/app_fonts.dart';
import 'package:comatecs/features/account/domain/entites/user_profile_entity.dart';
import 'package:comatecs/features/account/presentation/views/widgets/account_settings/points_item.dart';
import 'package:flutter/material.dart';

class AccountNameAndEmail extends StatelessWidget {
  const AccountNameAndEmail({
    super.key,
    required this.userprofileEntity,
  });
  final UserProfileEntity userprofileEntity;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textAlign: TextAlign.center,
          'عمر محمد',
          style: AppFonts.bold16.copyWith(
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 16),
          child: Text(
            textAlign: TextAlign.center,
            userprofileEntity.userEmail,
            style: AppFonts.regular16.copyWith(
              color: Colors.grey,
            ),
          ),
        ),
        PointsItem(
          numbers: userprofileEntity.numbers,
        ),
      ],
    );
  }
}
